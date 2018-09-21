import os

from setuptools import find_packages, setup

HERE = os.path.dirname(os.path.abspath(__file__))


def _get_version():
    """ Get version by parsing _version programmatically """
    version_ns = {}
    with open(os.path.join(HERE, "dash_bootstrap_components", "_version.py")) as f:
        exec(f.read(), {}, version_ns)
    version = version_ns["__version__"]
    return version


setup(
    name="dash-bootstrap-components",
    version=_get_version(),
    description="""
Bootstrap themed components for use in Plotly Dash
    """,
    author="ASI Data Science",
    author_email="engineering@asidatascience.com",
    url="https://www.asidatascience.com/",
    packages=find_packages(),
    install_requires=["dash"],
    include_package_data=True,
)
