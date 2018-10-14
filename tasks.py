
import os
from pathlib import Path

from termcolor import cprint
from invoke import task, run as invoke_run
import semver

VERSION_TEMPLATE = """
__version__ = "{version_string}"
"""

HERE = Path(__file__).parent

DASH_BOOTSTRAP_DIR = HERE / "dash_bootstrap_components"
JS_DIR = HERE / "src"


@task(help={'version': 'Version number to release'})
def prerelease(ctx, version):
    '''
    Release a pre-release version
    Running this task will:
     - Bump the version number
     - Push a release to pypi and npm
    '''
    info(f"Releasing version {version} as prerelease")
    info("Cleaning")
    clean()
    info("Updating versions")
    set_pyversion(version)
    set_jsversion(version)
    info("Building JavaScript components")
    build_js()
    info("Building and uploading Python source distribution")
    release_python_sdist()


def clean():
    paths_to_clean = [
        "src/node_modules",
        "dash_bootstrap_components/bundle.js",
        "dash_bootstrap_components/metadata.json",
        "dist/",
        "lib/"
    ]
    for path in paths_to_clean:
        run(f"rm -rf {path}")


def build_js():
    os.chdir(JS_DIR)
    try:
        run("npm install")
    finally:
        os.chdir(HERE)


def release_python_sdist():
    run("rm -f dist/*")
    run("python setup.py sdist")
    invoke_run("twine upload dist/*")


def set_pyversion(version):
    version = normalize_version(version)
    version_path = DASH_BOOTSTRAP_DIR / "_version.py"
    with version_path.open("w") as f:
        f.write(VERSION_TEMPLATE.format(version_string=version))


def set_jsversion(version):
    version = normalize_version(version)
    package_json_path = HERE / "package.json"
    with package_json_path.open() as f:
        package_json = f.readlines()
    for iline, line in enumerate(package_json):
        if '"version"' in line:
            package_json[iline] = '  "version": "{}",\n'.format(version)
    with open(package_json_path, 'w') as f:
        f.writelines(package_json)


def normalize_version(version):
    version_info = semver.parse_version_info(version)
    version_string = str(version_info)
    return version_string


def run(command, **kwargs):
    result = invoke_run(command, hide=True, warn=True, **kwargs)
    if result.exited != 0:
        error("Error running {}".format(command))
        print(result.stdout)
        print()
        print(result.stderr)
        exit(result.exited)


def error(text):
    cprint(text, "red")


def info(text):
    print(text)
