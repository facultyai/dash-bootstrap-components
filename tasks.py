import shutil
from itertools import chain
from pathlib import Path

import semver
from invoke import run as invoke_run
from invoke import task
from termcolor import cprint

VERSION_TEMPLATE = """__version__ = "{version_string}"
"""

TEST_VERSION_TEMPLATE = """from dash_bootstrap_components import __version__


def test_version():
    assert __version__ == "{version_string}"
"""

HERE = Path(__file__).parent

DASH_BOOTSTRAP_DIR = HERE / "dash_bootstrap_components"


@task(help={"version": "Version number to release"})
def prerelease(ctx, version):
    """
    Release a pre-release version
    Running this task will:
     - Bump the version number
     - Push a release to pypi
    """
    info(f"Creating prerelease branch for {version}")
    set_source_version(version)
    run(f"git checkout -b prerelease/{version}")
    run(
        "git add package.json package-lock.json "
        "dash_bootstrap_components/_version.py "
        "tests/test_version.py"
    )
    run(f'git commit -m "Prerelease {version}"')
    run(f"git push origin prerelease/{version}")


@task(help={"version": "Version number to release"})
def release(ctx, version):
    """
    Release a new version
    Running this task will:
     - Create a release branch
     - Bump the version number
    Release notes should be written in the body of the pull request. When
    changes are merged GitHub actions will
     - Build the package
     - Push a release to PyPI
     - Create a release
     - Revert to a dev version change.
    """
    info(f"Creating release branch for {version}")
    set_source_version(version)

    run(f"git checkout -b release/{version}")
    run(
        "git add package.json package-lock.json "
        "dash_bootstrap_components/_version.py "
        "tests/test_version.py"
    )
    run(f'git commit -m "Release {version}"')
    run(f"git push origin release/{version}")


@task
def copy_examples(ctx):
    """
    Copy examples used in documentation to the docs directory.
    """
    info("copying examples into docs directory")
    # TODO: have this determined by some configuration rather than hardcoded
    run(
        "cp examples/python/gallery/iris-kmeans/app.py "
        "docs/examples/vendor/iris.py"
    )
    run(
        "cp examples/python/advanced-component-usage/graphs_in_tabs.py "
        "docs/examples/vendor/graphs_in_tabs.py"
    )
    run(
        "cp examples/python/templates/multi-page-apps/simple_sidebar.py "
        "docs/examples/vendor/simple_sidebar.py"
    )


@task(copy_examples)
def documentation(ctx):
    """
    Push documentation to Heroku
    """
    info("Deploying docs")
    run("git checkout -b inv-push-docs")
    run("git add docs/examples/vendor/*.py -f")
    run('git commit -m "Add examples" --allow-empty')
    run("git subtree split --prefix docs -b docs-deploy")
    run("git push -f origin docs-deploy")
    run("git checkout main")
    run("git branch -D inv-push-docs docs-deploy")


@task(
    help={
        "version": "Version number to finalize. Must be "
        "the same version number that was used in the release."
    },
)
def postrelease(ctx, version):
    """
    Finalise the release
    Running this task will:
     - bump the version to the next dev version
     - push changes to main
    """
    clean_version = semver.finalize_version(version)
    if clean_version == version:
        # last release was full release, bump patch
        new_version = semver.bump_patch(version) + "-dev"
    else:
        # last release was prerelease, revert to dev version
        new_version = clean_version + "-dev"

    info(f"Bumping version numbers to {new_version} and committing")
    set_source_version(new_version)


def set_source_version(version):
    set_js_version(version)
    set_py_version(version)


def set_py_version(version):
    version = normalize_version(version)
    version_path = DASH_BOOTSTRAP_DIR / "_version.py"
    with version_path.open("w") as f:
        f.write(VERSION_TEMPLATE.format(version_string=version))

    test_version_path = HERE / "tests" / "test_version.py"
    with test_version_path.open("w") as f:
        f.write(TEST_VERSION_TEMPLATE.format(version_string=version))


def set_js_version(version):
    version = normalize_version(version)
    package_json_path = HERE / "package.json"
    with package_json_path.open() as f:
        package_json = f.readlines()
    for iline, line in enumerate(package_json):
        if '"version"' in line:
            package_json[iline] = f'  "version": "{version}",\n'
    with open(package_json_path, "w") as f:
        f.writelines(package_json)


@task
def set_documentation_version(ctx, version):
    version = normalize_version(version)
    docs_requirements_path = HERE / "docs" / "requirements.txt"
    with docs_requirements_path.open() as f:
        docs_requirements = f.readlines()
    for iline, line in enumerate(docs_requirements):
        if "dash_bootstrap_components" in line:
            updated_line = f"dash_bootstrap_components=={version}\n"
            docs_requirements[iline] = updated_line
    with open(docs_requirements_path, "w") as f:
        f.writelines(docs_requirements)


def normalize_version(version):
    version_info = semver.parse_version_info(version)
    version_string = str(version_info)
    return version_string


def run(command, exit_on_error=True, **kwargs):
    result = invoke_run(command, hide=True, warn=True, **kwargs)
    if result.exited != 0:
        if not exit_on_error:
            raise RuntimeError(result.stderr)
        error(f"Error running {command}")
        print(result.stdout)
        print()
        print(result.stderr)
        exit(result.exited)

    return result.stdout.strip()


def error(text):
    cprint(text, "red")


def info(text):
    print(text)


def make_and_clean_dir(dir_, glob="*"):
    info(f"Cleaning {dir_}/{glob}")
    (HERE / dir_).mkdir(exist_ok=True)
    for file_ in (HERE / dir_).glob(glob):
        if file_.is_file():
            file_.unlink()


def copy_dist():
    bundle_name = "dash_bootstrap_components.min.js"
    shutil.copy(
        HERE / "dash_bootstrap_components" / "_components" / bundle_name,
        HERE / "dist" / bundle_name,
    )


@task
def clean(_):
    make_and_clean_dir("dist")
    make_and_clean_dir("lib")
    make_and_clean_dir("dash_bootstrap_components/_components")
    make_and_clean_dir("src", "*.jl")
    make_and_clean_dir("src/jl")


@task
def move_generated_files(_):
    info("Moving generated files")
    dir_ = HERE / "dash_bootstrap_components"
    for file_ in chain(dir_.glob("*.py"), dir_.glob("*.json")):
        filename = file_.name

        if filename in (
            "__init__.py",
            "_table.py",
            "_version.py",
            "icons.py",
            "themes.py",
        ):
            continue

        if filename == "_imports_.py":
            filename = "__init__.py"

        file_.rename(file_.parent / "_components" / filename)


@task
def build_py(ctx):
    run("dash-generate-components ./src/components dash_bootstrap_components")
    copy_dist()
    move_generated_files(ctx)


@task
def build_r(ctx):
    run(
        "dash-generate-components ./src/components dash_bootstrap_components "
        "--r-prefix 'dbc'"
    )
    copy_dist()
    move_generated_files(ctx)
    with (HERE / "NAMESPACE").open("a") as f:
        f.write("\nexport(dbcThemes)\n")
        f.write("\nexport(dbcIcons)\n")

    # -dev suffix breaks local installs of R package
    description = (HERE / "DESCRIPTION").read_text().split("\n")

    for i in range(len(description)):
        desc = description[i]
        if desc.startswith("Version:") and desc.endswith("-dev"):
            description[i] = desc[:-4]

    with (HERE / "DESCRIPTION").open("w") as f:
        f.write("\n".join(description))


@task
def build_jl(ctx):
    run(
        "dash-generate-components ./src/components dash_bootstrap_components "
        "--jl-prefix 'dbc'"
    )
    copy_dist()
    move_generated_files(ctx)
    shutil.copy(HERE / "jl" / "themes.jl", HERE / "src" / "jl" / "themes.jl")
    shutil.copy(HERE / "jl" / "icons.jl", HERE / "src" / "jl" / "icons.jl")

    with (HERE / "src" / "DashBootstrapComponents.jl").open() as f:
        lines = f.readlines()

    n = len(lines)
    for i, line in enumerate(reversed(lines)):
        if line.startswith("include"):
            break

    lines.insert(n - i, 'include("jl/themes.jl")\n')
    lines.insert(n - i, 'include("jl/icons.jl")\n')

    with (HERE / "src" / "DashBootstrapComponents.jl").open("w") as f:
        f.writelines(lines)


@task
def install_built_packages(ctx):
    info("Installing Python package")
    run("pip install -e .")

    if shutil.which("R") is not None:
        info("Installing R package")
        run("R CMD INSTALL .")
    else:
        info("R installation not found, skipping R package")

    if shutil.which("julia") is not None:
        info("Installing Julia package")

        # TODO: modification of Project.toml only necessary until Dash>=2.0.1
        # is released
        edit_julia_dependencies(ctx)

        current_branch = run("git rev-parse --abbrev-ref HEAD")
        run("git checkout -b inv-julia-install")
        run(
            "git add -f deps/_components/dash_bootstrap_components.min.js "
            "src/*.jl src/jl/*.jl Project.toml"
        )
        run("git commit -m julia")
        julia_command = (
            "using Pkg; "
            'Pkg.add([PackageSpec(name="Dash", version="1.0"), '
            'PackageSpec("HTTP")]); '
            'Pkg.add(path=".", rev="inv-julia-install");'
        )
        run(f"julia -e '{julia_command}'")
        run(f"git checkout {current_branch}")
        run("git branch -D inv-julia-install")
    else:
        info("Julia installation not found, skipping Julia package")


@task
def edit_julia_dependencies(_):
    with open("Project.toml") as f:
        project_contents = f.read()

    project_contents = project_contents.replace(
        'Dash = "0.1.3"', 'Dash = "0.1.3, 1.0"'
    )

    with open("Project.toml", "w") as f:
        f.write(project_contents)


@task
def format_r_jl(_):
    if shutil.which("Rscript") is not None:
        try:
            info("Formatting R with styler")
            run(
                'Rscript -e \'library(styler); style_dir("docs"); '
                'style_dir("examples")\'',
                exit_on_error=False,
            )
        except RuntimeError:
            error("styler not installed, skipping R formatting")
    else:
        error("R not installed, skipping R formatting")

    if shutil.which("julia") is not None:
        try:
            info("Formatting Julia with JuliaFormatter")
            run(
                'julia -e \'using JuliaFormatter; format("docs"); '
                'format("examples");\'',
                exit_on_error=False,
            )
        except RuntimeError:
            error("JuliaFormatter not installed, skipping Julia formatting")
    else:
        error("Julia not installed, skipping Julia formatting")
