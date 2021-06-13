"""
Automated testing of non-Python code snippets in the docs
"""
import json
import re
import unittest
from collections import defaultdict
from pathlib import Path

import pytest
import requests
from dash.testing.composite import DashRComposite, DashJuliaComposite

from .helpers import clean_path, drop_keys, py_source_to_app
from .wrappers import PY_WRAPPER, R_WRAPPER, JL_WRAPPER

HERE = Path(__file__).parent

PATTERN = re.compile(r"{{example:(.*)}}")
PARAMS = [
    (
        path,
        [match.split(":") for match in PATTERN.findall(path.read_text())],
    )
    for path in HERE.parent.glob("*.md")
]

SKIP = ["components/table/kwargs.py", "components/tabs/active_tab.py"]
ENVS = defaultdict(
    dict,
    {
        "modal.md": {
            "LOREM": (HERE.parent / "modal" / "lorem.txt").read_text().strip()
        }
    },
)


def compare_layouts(
    components, snippet, runner, wrapper, py_snippet, py_runner, py_env
):

    # Get python snippet layout
    app = py_source_to_app(
        PY_WRAPPER.format(
            snippet=py_snippet,
            components=components,
        ),
        env=py_env,
    )
    py_runner.start_server(app, port=8051)
    py_layout = requests.get(f"{py_runner.server_url}/_dash-layout").json()

    # Get other language snippet layout
    runner.start_server(
        wrapper.format(
            snippet=snippet,
            components=components,
        )
    )
    layout = requests.get(f"{runner.server_url}/_dash-layout").json()

    # Test layouts match
    unittest.TestCase().assertDictEqual(
        drop_keys(py_layout), drop_keys(layout)
    )


@pytest.fixture
def dashr(request, dashr_server, tmpdir):
    with DashRComposite(
        dashr_server,
        browser=request.config.getoption("webdriver"),
        remote=request.config.getoption("remote"),
        remote_url=request.config.getoption("remote_url"),
        headless=request.config.getoption("headless"),
        options=request.config.hook.pytest_setup_options(),
        download_path=tmpdir.mkdir("download-r").strpath,
        percy_assets_root=request.config.getoption("percy_assets"),
        percy_finalize=request.config.getoption("nopercyfinalize"),
        pause=request.config.getoption("pause"),
    ) as dc:
        yield dc


@pytest.fixture
def dashjl(request, dashjl_server, tmpdir):
    with DashJuliaComposite(
        dashjl_server,
        browser=request.config.getoption("webdriver"),
        remote=request.config.getoption("remote"),
        remote_url=request.config.getoption("remote_url"),
        headless=request.config.getoption("headless"),
        options=request.config.hook.pytest_setup_options(),
        download_path=tmpdir.mkdir("download-jl").strpath,
        percy_assets_root=request.config.getoption("percy_assets"),
        percy_finalize=request.config.getoption("nopercyfinalize"),
        pause=request.config.getoption("pause"),
    ) as dc:
        yield dc


@pytest.mark.parametrize("config", PARAMS)
def test_snippets(dash_duo, dashr, dashjl, config):
    path, data = config

    env = ENVS[path.name]

    file_types = {
        "R": {
            "file_ext": "r",
            "assignment_op": "<-",
            "runner": dashr,
            "wrapper": R_WRAPPER,
        },
        "Julia": {
            "file_ext": "jl",
            "assignment_op": "=",
            "runner": dashjl,
            "wrapper": JL_WRAPPER,
        },
    }

    # Dictionaries to hold the results
    py_data = {i: [] for i in file_types.keys()}
    snippets = {i: [] for i in file_types.keys()}
    components = {i: [] for i in file_types.keys()}

    # Counter to generate new non-duplicate values
    counter = 0

    # Determine whether all components are unique
    rename = len([i[1] for i in data]) != len(set([i[1] for i in data]))

    # Concatenate all the snippets in the markdown file together
    for filepath, name in data:
        if filepath not in SKIP:

            filepath = HERE.parent / clean_path(filepath)

            new_component_name = name

            # Some components are named the same - this renames them
            if rename:
                py_snippet = []
                with filepath.open() as f:
                    for line in f.readlines():
                        new_line = line
                        if new_line.startswith(f"{name} ="):
                            new_component_name = f"{name}_{counter}"
                            py_snippet.append(
                                f"{new_component_name} ="
                                + new_line[len(f"{name} =") :]
                            )
                            counter += 1
                        else:
                            py_snippet.append(new_line)
                py_snippet = "".join(py_snippet)
            else:
                py_snippet = filepath.read_text()

            # Now get the data for each file type
            for file_type, meta in file_types.items():
                # Get the file path
                snippet_file = (
                    filepath.parent / f"{filepath.stem}.{meta['file_ext']}"
                )

                # Check a snippet exists
                if snippet_file.exists():
                    py_data[file_type].append(py_snippet)
                    # Add the component details
                    components[file_type].append(new_component_name)

                    # If we changed the name, then do it again here on the new file
                    if rename and new_component_name != name:
                        snippet = []
                        with snippet_file.open() as f:
                            for line in f.readlines():
                                new_line = line
                                if new_line.startswith(
                                    f"{name} {meta['assignment_op']}"
                                ):
                                    snippet.append(
                                        f"{new_component_name} {meta['assignment_op']}"
                                        + new_line[
                                            len(
                                                f"{name} {meta['assignment_op']}"
                                            ) :
                                        ]
                                    )

                                else:
                                    snippet.append(new_line)

                        snippets[file_type].append("".join(snippet))
                    else:
                        snippets[file_type].append(snippet_file.read_text())

    assert all(
        [len(i) == len(set(i)) for _, i in components.items()]
    ), "component names are not unique"

    # Test all the snippets match
    for file_type, meta in file_types.items():
        if len(components[file_type]) > 0:

            compare_layouts(
                components=", ".join(components[file_type]),
                snippet="\n".join(snippets[file_type]),
                runner=meta["runner"],
                wrapper=meta["wrapper"],
                py_snippet="\n".join(py_data[file_type]),
                py_runner=dash_duo,
                py_env=env,
            )
