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

    # Find the pagination object
    pagination_comp = runner.find_element("#pagination")
    pagination_text = runner.find_element("#pagination-contents")

    # Check it has 10 page-items objects in it
    pages = pagination_comp.find_elements(".page-item")
    wait.until(
        lambda: len(pages) == 10,
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
        lambda: pagination_text.text == "Page selected: 7",
        timeout=4,
    )

    # Change the slider to value 5
    runner.click_at_coord_fractions(
        runner.find_element("#page-change"), 0.5, 0.25
    )

    # Check the text in contents changes to "Page selected: 5"
    wait.until(
        lambda: pagination_text.text == "Page selected: 5",
        timeout=4,
    )

    # Check that the <li> object inside pagination with number = 5
    # has active as a class
    pages = pagination_comp.find_element(".active")
    wait.until(lambda: pages[4].text == "5")
