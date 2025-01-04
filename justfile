python_version := "3.12"

set unstable
set script-interpreter := ["uv", "run", "--isolated", "-q", "--script"]

# Lint Python source with Ruff and JS source with prettier
lint: lint-py lint-js

# Lint Python source with Ruff
lint-py:
    uv run ruff format --check
    uv run ruff check

# Lint JS source with prettier
lint-js:
    npm run lint

# Format Python source with Ruff and JS source with prettier
format: format-py format-js

# Format Python source with Ruff
format-py:
    uv run ruff format
    uv run ruff check --fix

# Format JS source with prettier
format-js:
    npm run format

# Run unit tests with Jest and integration tests with pytest
test: test-py test-js

# Run integration tests with pytest
test-py:
    uv run --python {{python_version}} pytest --headless tests

# Run unit tests with Jest
test-js:
    npm test
    npm run test:demo

# Delete generated files and recreate empty directories
clean:
    rm -rf dist lib dash_bootstrap_components/_components
    mkdir -p dist lib dash_bootstrap_components/_components

# Build dash-bootstrap-components
build: clean && _build-py
    npm run build

# Create and push a prerelease branch
prerelease version: (_set-source-version version)
    git checkout -b prerelease/{{version}}
    git add package.json dash_bootstrap_components/_version.py tests/test_version.py
    git commit -m "Prerelease {{version}}"
    git push origin prerelease/{{version}}

# Create and push a release branch
release version: (_set-source-version version)
    git checkout -b release/{{version}}
    git add package.json dash_bootstrap_components/_version.py tests/test_version.py
    git commit -m "Release {{version}}"
    git push origin release/{{version}}

# Clean up version after release / prerelease
postrelease version:
    just _set-source-version "$(uv run pysemver nextver {{version}} patch)-dev"

# Deploy the documentation
deploy-docs: _copy-examples
    git checkout -b just-push-docs
    git add docs/examples/vendor/*.py -f
    git commit -m "Add examples" --allow-empty
    git subtree split --prefix docs -b docs-deploy
    git push -f origin docs-deploy
    git checkout main
    git branch -D just-push-docs docs-deploy

_build-py: && _move-generated-files
    uv run dash-generate-components ./src/components dash_bootstrap_components
    cp dash_bootstrap_components/_components/dash_bootstrap_components.min.js dist

_copy-examples:
    cp examples/gallery/iris-kmeans/app.py docs/examples/vendor/iris.py
    cp examples/advanced-component-usage/graphs_in_tabs.py docs/examples/vendor/graphs_in_tabs.py
    cp examples/templates/multi-page-apps/simple_sidebar.py docs/examples/vendor/simple_sidebar.py

_set-source-version version: (_set-py-version version) (_set-js-version version)

[script]
_set-py-version version:
    with open("{{justfile_directory()}}/dash_bootstrap_components/_version.py", "w") as f:
        f.write('__version__ = "{{version}}"\n')

    with open("{{justfile_directory()}}/tests/test_version.py", "w") as f:
        f.write(
            "from dash_bootstrap_components import __version__\n\n\n"
            'def test_version():\n    assert __version__ == "{{version}}"\n'
        )

[script]
_set-js-version version:
    import json

    with open("{{justfile_directory()}}/package.json") as f:
        package = json.load(f)

    package["version"] = "{{version}}"

    with open("{{justfile_directory()}}/package.json", "w") as f:
        json.dump(package, f, indent=2)
        f.write("\n")

[script]
_set-docs-version version:
    docs_requirements_path = "{{justfile_directory()}}/docs/requirements.txt"
    with open(docs_requirements_path) as f:
        requirements = f.readlines()
    for i, line in enumerate(requirements):
        if "dash_bootstrap_components" in line:
            requirements[i] = "dash_bootstrap_components=={{version}}\n"
            break
    with open(docs_requirements_path, "w") as f:
        f.writelines(requirements)

[script]
_move-generated-files:
    from itertools import chain
    from pathlib import Path

    dir_ = Path("{{justfile_directory()}}/dash_bootstrap_components")
    for file_ in chain(dir_.glob("*.py"), dir_.glob("*.json")):
        if file_.name in ("__init__.py", "_table.py", "_version.py", "icons.py", "themes.py"):
            continue
        filename = "__init__.py" if file_.name == "_imports_.py" else file_.name
        file_.rename(file_.parent / "_components" / filename)
