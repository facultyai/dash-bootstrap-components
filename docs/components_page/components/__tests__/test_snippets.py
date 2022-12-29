"""
Automated testing of non-Python code snippets in the docs
"""
import re
import unittest
from pathlib import Path

import pytest
import requests
from dash.testing.application_runners import JuliaRunner, RRunner

from .helpers import clean_path, drop_keys, py_source_to_app, rename_variable
from .wrappers import JL_WRAPPER, PY_WRAPPER, R_WRAPPER

HERE = Path(__file__).parent

PATTERN = re.compile(r"{{example:(.*)}}")
PARAMS = [
    (
        path,
        [match.split(":") for match in PATTERN.findall(path.read_text())],
    )
    for path in HERE.parent.glob("*.md")
]

SKIP = [
    "components/table/kwargs.py",
    "components/table/color.py",
    "components/tabs/active_tab.py",
]
ENVS = {
    "modal.md": {
        "LOREM": (HERE.parent / "modal" / "lorem.txt").read_text().strip()
    },
}

R_PORT = 8051
JL_PORT = 8053


@pytest.fixture
def dashr_server():
    with RRunner() as starter:
        starter.port = R_PORT
        yield starter


@pytest.fixture
def dashjl_server():
    with JuliaRunner() as starter:
        starter.port = JL_PORT
        yield starter


@pytest.mark.parametrize("config", PARAMS)
def test_r_snippets(dash_thread_server, dashr_server, config):
    md_path, data = config
    env = ENVS.get(md_path.name)

    python_r_compare = []

    # Concatenate all the snippets in the markdown file together
    for i, (snippet_path, name) in enumerate(data):
        if snippet_path in SKIP:
            continue

        snippet_path = HERE.parent / clean_path(snippet_path)
        py_snippet = rename_variable(snippet_path, i, name)

        r_snippet_path = snippet_path.parent / f"{snippet_path.stem}.R"

        if r_snippet_path.exists():
            r_snippet = rename_variable(
                r_snippet_path, i, name, assign_op="<-"
            )
            python_r_compare.append((py_snippet, r_snippet, f"{name}__{i}"))

    if python_r_compare:
        assert_layouts_equal(
            python_r_compare,
            dashr_server,
            R_WRAPPER,
            R_PORT,
            dash_thread_server,
            env,
            8050,
        )


@pytest.mark.parametrize("config", PARAMS)
def test_jl_snippets(dash_thread_server, dashjl_server, config):
    md_path, data = config
    env = ENVS.get(md_path.name)

    python_jl_compare = []

    # Concatenate all the snippets in the markdown file together
    for i, (snippet_path, name) in enumerate(data):
        if snippet_path in SKIP:
            continue

        snippet_path = HERE.parent / clean_path(snippet_path)
        py_snippet = rename_variable(snippet_path, i, name)

        jl_snippet_path = snippet_path.parent / f"{snippet_path.stem}.jl"

        if jl_snippet_path.exists():
            jl_snippet = rename_variable(jl_snippet_path, i, name)
            python_jl_compare.append((py_snippet, jl_snippet, f"{name}__{i}"))

    if python_jl_compare:
        assert_layouts_equal(
            python_jl_compare,
            dashjl_server,
            JL_WRAPPER,
            JL_PORT,
            dash_thread_server,
            env,
            8052,
        )


def test_landing_page_example(dash_thread_server, dashr_server, dashjl_server):
    index_dir = HERE.parent / "index"
    py_source = (index_dir / "simple.py").read_text()
    r_source = (
        (index_dir / "simple.R").read_text().replace("8050", str(R_PORT))
    )
    jl_source = (
        (index_dir / "simple.jl").read_text().replace("8050", str(JL_PORT))
    )

    app = py_source_to_app(py_source, {})
    dash_thread_server.start(app, port=8050)
    py_layout = requests.get(f"{dash_thread_server.url}/_dash-layout").json()

    dashr_server.start(r_source)
    r_layout = requests.get(f"{dashr_server.url}/_dash-layout").json()

    dashjl_server.start(jl_source)
    jl_layout = requests.get(f"{dashjl_server.url}/_dash-layout").json()

    # Test layouts match
    unittest.TestCase().assertDictEqual(
        drop_keys(py_layout), drop_keys(r_layout)
    )
    unittest.TestCase().assertDictEqual(
        drop_keys(py_layout), drop_keys(jl_layout)
    )


def assert_layouts_equal(
    compare, runner, wrapper, port, py_runner, py_env, py_port
):
    # Get python snippet layout
    app = py_source_to_app(
        PY_WRAPPER.format(
            snippet="\n".join(x[0] for x in compare),
            components=", ".join(x[2] for x in compare),
        ),
        env=py_env,
    )
    py_runner.start(app, port=py_port)
    py_layout = requests.get(f"{py_runner.url}/_dash-layout").json()

    runner.start(
        wrapper.format(
            snippet="\n".join(x[1] for x in compare),
            components=", ".join(x[2] for x in compare),
            port=port,
        )
    )
    layout = requests.get(f"{runner.url}/_dash-layout").json()

    # Test layouts match
    unittest.TestCase().assertDictEqual(
        drop_keys(py_layout), drop_keys(layout)
    )
