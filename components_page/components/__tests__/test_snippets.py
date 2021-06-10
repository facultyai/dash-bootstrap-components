"""
Automated testing of non-Python code snippets in the docs
"""
import re
import unittest
from pathlib import Path

import pytest
import requests

from .helpers import clean_path, drop_keys, py_source_to_app
from .wrappers import PY_WRAPPER, R_WRAPPER

HERE = Path(__file__).parent

PATTERN = re.compile(r"{{example:(.*)}}")

PARAMS = [
    (
        path.name,
        [match.split(":") for match in PATTERN.findall(path.read_text())],
    )
    for path in HERE.parent.glob("*.md")
]


@pytest.mark.parametrize("config", PARAMS)
def test_snippets(dash_thread_server, dashr, config):
    name, snippets = config

    for path, name in snippets:
        path = clean_path(path)
        r_snippet = path.parent / f"{path.stem}.R"
        if r_snippet.exists():
            app = py_source_to_app(
                PY_WRAPPER.format(snippet=path.read_text(), name=name)
            )
            dash_thread_server.start(app, port=8051)
            py_layout = requests.get(
                f"{dash_thread_server.url}/_dash-layout"
            ).json()

            dashr.start_server(
                R_WRAPPER.format(snippet=r_snippet.read_text(), name=name)
            )
            r_layout = requests.get(f"{dashr.server_url}/_dash-layout").json()
            unittest.TestCase().assertDictEqual(py_layout, drop_keys(r_layout))
