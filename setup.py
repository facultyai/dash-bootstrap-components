import os

from setuptools import find_packages, setup

HERE = os.path.dirname(os.path.abspath(__file__))


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
    with open(os.path.join(HERE, "README.md")) as f:
        return f.read()


setup(
    name="dash-bootstrap-components",
    version=_get_version(),
    description="Bootstrap themed components for use in Plotly Dash",
    long_description=_get_long_description(),
    long_description_content_type="text/markdown",
    license="Apache Software License",
    author="ASI Data Science",
    author_email="opensource@asidatascience.com",
    url="https://github.com/ASIDataScience/dash-bootstrap-components",
    packages=find_packages(),
    install_requires=["dash>=0.32.1", "dash-html-components"],
    include_package_data=True,
    classifiers=[
        "License :: OSI Approved :: Apache Software License",
        "Programming Language :: Python :: 2.7",
        "Programming Language :: Python :: 3.5",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
    ],
    extras_require={"pandas": ["numpy", "pandas"]},
)
