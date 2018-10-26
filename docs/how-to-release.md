
# How to release dash-bootstrap-components

This is a set of instructions for releasing to Pypi. The release process is somewhat automated with an `invoke <http://docs.pyinvoke.org/en/latest/getting_started.html>`_ task file. You will need `invoke` and `semver` installed.

 - Run ``invoke prerelease <version>``, where ``version`` is the version number of the release candidate. If you are aiming to release version ``0.0.7``, this will be ``0.0.7-rc1``. This will automatically bump the version numbers and upload the release to Pypi.

 - Verify that you can install the new version and that it works correctly with ``pip install dash-bootstrap-components==<new version>``. It's best to verify the installation on a clean virtual machine (rather than just in a new environment) since installation is more complex than for pure Python packages.

 - If the manual installation tests failed, fix the issue and repeat the previous steps with ``rc2`` etc. If installing worked, proceed to the next steps.

 - Run ``invoke release <version>``, where ``version`` is the version number of the release (e.g. ``0.7.0``). You will be prompted to enter a changelog. This will create a release, push it to Pypi and add a tag on current master.

 - Verify that the new version is available by running ``pip install dash-bootstrap-components`` in a new virtual environment.

 - Run ``invoke postrelease <version>``, where ``version`` is the version number of the new release. This will change the version numbers back to a `-dev` version.

# Releasing documentation changes

The documentation is currently hosted on Heroku. To push documentation updates:

```
git remote add heroku https://git.heroku.com/dash-bootstrap-components.git
git subtree push --prefix docs/ heroku master
```
