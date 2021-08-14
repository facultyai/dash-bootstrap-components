"""
Testing of callbacks in non-Python Pagination snippets.
"""
from pathlib import Path

import dash.testing.wait as wait

from .helpers import load_jl_app, load_r_app

HERE = Path(__file__).parent


def test_r_pagination_simple(dashr):
    r_app = load_r_app((HERE.parent / "pagination" / "simple.R"), "pagination")
    dashr.start_server(r_app)
    check_pagination_simple_callbacks(dashr)


def test_jl_pagination_simple(dashjl):
    jl_app = load_jl_app(
        (HERE.parent / "pagination" / "simple.jl"), "pagination"
    )
    dashjl.start_server(jl_app)
    check_pagination_simple_callbacks(dashjl)


def check_pagination_simple_callbacks(runner):

    for i in range(1, 6):
        runner.find_element(f"#pagination-simple-{i}").click()
        wait.until(
            # The selected item is active
            lambda: runner.find_element(
                f"#pagination-simple-{i}"
            ).get_attribute("active")
            # The non-selected items are not active
            and (
                all(
                    not runner.find_element(
                        f"#pagination-simple-{j}"
                    ).get_attribute("active")
                    for j in range(1, 6)
                    if j != i
                )
            )
            # The text is updated
            and runner.find_element("#pagination-simple-content").text
            == f"Page {i} selected",
            timeout=4,
        )
