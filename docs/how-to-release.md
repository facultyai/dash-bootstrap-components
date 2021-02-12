# How to release dash-bootstrap-components

This is a set of instructions for releasing _dash-bootstrap-components_. The release process is somewhat automated with an [`invoke`](http://docs.pyinvoke.org/en/latest/getting_started.html>) task file. You will need `invoke` and `semver` installed.

- Run `invoke prerelease <version>`, where `version` is the version number of the release candidate. If you are aiming to release version `0.0.7`, this will be `0.0.7-rc1`. This will automatically bump the version numbers and push a release branch to GitHub.

- Create a pull request with this branch, and document changes in the release in the comment of your pull request. The title and comment of the pull request are used by GitHub Actions to make the release on GitHub. See the other releases or the [changelog](https://dash-bootstrap-components.opensource.faculty.ai/changelog/) for previous release summaries.

- Merge the pull request. This will trigger a GitHub Action that will build the package and upload to PyPI.

- Verify that you can install the new version and that it works correctly with `pip install dash-bootstrap-components==<new version>`. It's best to verify the installation on a clean virtual machine (rather than just in a new environment) since installation is more complex than for pure Python packages.

- If the manual installation tests failed, fix the issue and repeat the previous steps with `rc2` etc. If installing worked, proceed to the next steps.

- Run `invoke release <version>`, where `version` is the version number of the release (e.g. `0.7.0`). This will push a release branch to GitHub.

- As before, open a pull request and use the title and comment to document changes to the package. When the pull request is merged GitHub Actions will build the packages and upload it to PyPI.

- Verify that the new version is available by running `pip install -U dash-bootstrap-components` in a new virtual environment.

# Releasing documentation changes

The documentation is currently hosted on Heroku. To push documentation updates:

```sh
invoke documentation
```
