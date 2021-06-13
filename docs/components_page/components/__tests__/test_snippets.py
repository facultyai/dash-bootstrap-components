"""
Automated testing of non-Python code snippets in the docs
"""
import re
import unittest
from collections import defaultdict
from pathlib import Path

import pytest
import requests
from dash.testing.composite import DashRComposite

from .helpers import clean_path, drop_keys, py_source_to_app
from .wrappers import PY_WRAPPER, R_WRAPPER

HERE = Path(__file__).parent

PATTERN = re.compile(r"{{example:(.*)}}")
PARAMS = [
    match.split(":")
    for path in HERE.parent.glob("*.md")
    for match in PATTERN.findall(path.read_text())
]

SKIP = ["components/table/kwargs.py", "components/tabs/active_tab.py"]
ENVS = defaultdict(
    dict,
    {
        "components/modal/scrollable.py": {
            "LOREM": (HERE.parent / "modal" / "lorem.txt").read_text().strip()
        }
    },
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


@pytest.mark.parametrize("config", PARAMS)
def test_snippets(dash_duo, dashr, config):
    path, name = config

    if path not in SKIP:
        env = ENVS[path]
        path = HERE.parent / clean_path(path)
        r_snippet = path.parent / f"{path.stem}.R"
        if r_snippet.exists():
            # Get python snippet layout
            app = py_source_to_app(
                PY_WRAPPER.format(snippet=path.read_text(), name=name), env=env
            )
            dash_duo.start_server(app, port=8051)
            py_layout = requests.get(
                f"{dash_duo.server_url}/_dash-layout"
            ).json()

            # Get R snippet layout
            dashr.start_server(
                R_WRAPPER.format(snippet=r_snippet.read_text(), name=name)
            )
            r_layout = requests.get(f"{dashr.server_url}/_dash-layout").json()

            # Test layouts match
            unittest.TestCase().assertDictEqual(
                drop_keys(py_layout), drop_keys(r_layout)
            )
