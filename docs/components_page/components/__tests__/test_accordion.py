"""
Testing of callbacks in non-Python Accordion snippets.
"""
from pathlib import Path

import dash.testing.wait as wait

from .helpers import load_jl_app, load_r_app

HERE = Path(__file__).parent


def test_r_simple(dashr):
    r_app = load_r_app((HERE.parent / "accordion" / "simple.R"), "accordion")
    dashr.start_server(r_app)
    check_simple_callbacks(dashr)


def test_jl_simple(dashjl):
    jl_app = load_jl_app(
        (HERE.parent / "accordion" / "simple.jl"), "accordion"
    )
    dashjl.start_server(jl_app)
    check_simple_callbacks(dashjl)


def check_simple_callbacks(runner):
    # Find the accordion object
    accordion_comp = runner.find_element("#accordion")
    accordion_text = runner.find_element("#accordion-contents")

    # Check it has 3 page-items objects in it
    pages = accordion_comp.find_elements(".accordion-item")
    wait.until(
        lambda: len(pages) == 3,
        timeout=4,
    )

    # Click the third section
    wait.until(
        lambda: pages[2].find_elements(".accordion-collapse").text
        == "This is the content of the third section",
        timeout=4,
    )
    pages[2].find_elements(".accordion-button").click()

    # Check the text in contents changes to "Item selected: item-2"
    wait.until(
        lambda: accordion_text.text == "Item selected: item-2",
        timeout=4,
    )

    # Change the slider to value 1
    runner.click_at_coord_fractions(
        runner.find_element("#item-change"), 0.5, 0.25
    )

    # Check the text in contents changes to "Item selected: item-1"
    wait.until(
        lambda: accordion_text.text == "Item selected: item-1",
        timeout=4,
    )

    # Check that the right section is showing
    item = accordion_comp.find_element(".show")
    wait.until(
        lambda: item.text == "This is the content of the second section"
    )
