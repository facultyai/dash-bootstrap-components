import nox

nox.options.sessions = ["lint", "test"]

SOURCES = [
    "dash_bootstrap_components",
    "docs",
    "examples",
    "tests",
    "noxfile.py",
    "tasks.py",
]


@nox.session()
def lint(session):
    session.install("black", "flake8", "isort")
    session.run("black", "--check", *SOURCES)
    session.run("flake8", *SOURCES)
    session.run("isort", "--check", *SOURCES)


@nox.session(name="format")
def format_(session):
    session.install("black", "isort")
    session.run("black", *SOURCES)
    session.run("isort", *SOURCES)


@nox.session(python=["3.7", "3.8", "3.9", "3.10", "3.11"])
def test(session):
    session.install("pytest")
    session.install("dash[testing]>=2.0.0")
    session.install(".")
    session.run("pytest", "--headless", "tests")
