from setuptools import find_packages, setup

setup(
    name="sherlockml-dash",
    version="0.0.1",
    description="""
Bootstrap themed components for use in Plotly Dash
    """,
    author="ASI Data Science",
    author_email="engineering@asidatascience.com",
    url="https://www.asidatascience.com/",
    packages=find_packages(),
    install_requires=["dash"],
)
