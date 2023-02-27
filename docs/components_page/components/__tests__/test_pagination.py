"""
Testing of callbacks in non-Python Pagination snippets.
"""
from pathlib import Path

import dash.testing.wait as wait

from .helpers import load_jl_app, load_r_app

HERE = Path(__file__).parent


def test_r_pagination_callback(dashr):
    r_app = load_r_app(
        (HERE.parent / "pagination" / "callback.R"), "pagination"
    )
    dashr.start_server(r_app)
    check_pagination_callback_callbacks(dashr)


def test_jl_pagination_callback(dashjl):
    jl_app = load_jl_app(
        (HERE.parent / "pagination" / "callback.jl"), "pagination"
    )
    dashjl.start_server(jl_app)
    check_pagination_callback_callbacks(dashjl)


def check_pagination_callback_callbacks(runner):
    # Check it has 10 page-items objects in it
    pages = runner.find_elements("#pagination .page-item")
    wait.until(
        lambda: len(pages) == 10,
        timeout=4,
    )

    # Ensure that all the items have loaded
    wait.until(
        lambda: runner.find_element("#pagination-contents").text
        == "Page selected: 1",
        timeout=4,
    )

    # Click the link with text 7
    wait.until(
        lambda: pages[6].text == "7",
        timeout=4,
    )
    pages[6].click()

    # Check the text in contents changes to "Page selected: 7"
    wait.until(
        lambda: runner.find_element("#pagination-contents").text
        == "Page selected: 7",
        timeout=4,
    )

    # Change the slider to value 5
    page_changer = runner.find_element("#page-change")
    runner.click_at_coord_fractions(page_changer, 0.5, 0.25)

    # Check the text in contents changes to "Page selected: 5"
    wait.until(
        lambda: runner.find_element("#pagination-contents").text
        == "Page selected: 5",
        timeout=4,
    )

    # Check that the <li> object inside pagination with number = 5
    # has active as a class
    active_page = runner.find_element("#pagination .active")
    wait.until(
        lambda: active_page.text.split("\n") == ["5", "(current)"],
        timeout=4,
    )
