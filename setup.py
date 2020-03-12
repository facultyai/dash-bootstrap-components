import io
import os

from setuptools import find_packages, setup

HERE = os.path.dirname(os.path.abspath(__file__))

GITHUB_URL = "https://github.com/facultyai/dash-bootstrap-components/"


def _get_version():
    """ Get version by parsing _version programmatically """
    version_ns = {}
    with open(
        os.path.join(HERE, "dash_bootstrap_components", "_version.py")
    ) as f:
        exec(f.read(), {}, version_ns)
    version = version_ns["__version__"]
    return version


def _get_long_description():
    with io.open(os.path.join(HERE, "landing-page.md"), encoding="utf8") as f:
        return f.read()


setup(
    name="dash-bootstrap-components",
    version=_get_version(),
    description="Bootstrap themed components for use in Plotly Dash",
    long_description=_get_long_description(),
    long_description_content_type="text/markdown",
    license="Apache Software License",
    author="Faculty",
    author_email="opensource@faculty.ai",
    url="https://dash-bootstrap-components.opensource.faculty.ai/",
    project_urls={
        "Bug Reports": os.path.join(GITHUB_URL, "issues"),
        "Source": GITHUB_URL,
    },
    packages=find_packages(),
    install_requires=["dash>=1.9.0"],
    include_package_data=True,
    classifiers=[
        "Framework :: Dash",
        "License :: OSI Approved :: Apache Software License",
        "Programming Language :: Python :: 2.7",
        "Programming Language :: Python :: 3.5",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
    ],
    extras_require={"pandas": ["numpy", "pandas"]},
)
