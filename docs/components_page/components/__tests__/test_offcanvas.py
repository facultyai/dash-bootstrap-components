"""
Testing of callbacks in non-Python Offcanvas snippets.
"""
from pathlib import Path

import dash.testing.wait as wait
from selenium.webdriver.common.action_chains import ActionChains

from .helpers import load_jl_app, load_r_app

HERE = Path(__file__).parent


def test_r_offcanvas_simple(dashr):
    r_app = load_r_app((HERE.parent / "offcanvas" / "simple.R"), "offcanvas")
    dashr.start_server(r_app)
    check_offcanvas_simple_callbacks(dashr)


def test_jl_offcanvas_simple(dashjl):
    jl_app = load_jl_app(
        (HERE.parent / "offcanvas" / "simple.jl"), "offcanvas"
    )
    dashjl.start_server(jl_app)
    check_offcanvas_simple_callbacks(dashjl)


def check_offcanvas_simple_callbacks(runner):
    wait.until(
        lambda: len(runner.find_elements("#open-offcanvas")) != 0,
        timeout=4,
    )

    runner.find_element("#open-offcanvas").click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas")) != 0,
        timeout=4,
    )

    # When offcanvas-header.btn-close is clicked, the offcanvas disappears
    wait.until(
        lambda: len(runner.find_elements(".btn-close")) != 0,
        timeout=4,
    )

    button = runner.find_element(".btn-close")
    ActionChains(runner.driver).move_to_element(button).click(button).perform()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas")) == 0,
        timeout=4,
    )

    runner.find_element("#open-offcanvas").click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas-backdrop.show")) != 0,
        timeout=4,
    )

    # When offcanvas-backdrop is clicked, the offcanvas disappears
    runner.find_element(".offcanvas-backdrop").click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas")) == 0,
        timeout=4,
    )


# ------------------------------


def test_r_offcanvas_backdrop(dashr):
    r_app = load_r_app((HERE.parent / "offcanvas" / "backdrop.R"), "offcanvas")
    dashr.start_server(r_app)
    check_offcanvas_backdrop_callbacks(dashr)


def test_jl_offcanvas_backdrop(dashjl):
    jl_app = load_jl_app(
        (HERE.parent / "offcanvas" / "backdrop.jl"), "offcanvas"
    )
    dashjl.start_server(jl_app)
    check_offcanvas_backdrop_callbacks(dashjl)


def check_offcanvas_backdrop_callbacks(runner):
    wait.until(
        lambda: len(runner.find_elements("#open-offcanvas-backdrop")) != 0,
        timeout=4,
    )

    runner.find_element("#open-offcanvas-backdrop").click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas")) != 0,
        timeout=4,
    )

    runner.find_element(
        "#_dbcprivate_radioitems_offcanvas-backdrop-selector_input_false"
    ).click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas-backdrop")) == 0,
        timeout=4,
    )

    runner.find_element(
        "#_dbcprivate_radioitems_offcanvas-backdrop-selector_input_true"
    ).click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas-backdrop")) != 0,
        timeout=4,
    )

    runner.find_element(
        "#_dbcprivate_radioitems_offcanvas-backdrop-selector_input_false"
    ).click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas-backdrop")) == 0,
        timeout=4,
    )

    runner.find_element(
        "#_dbcprivate_radioitems_offcanvas-backdrop-selector_input_static"
    ).click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas-backdrop")) != 0,
        timeout=4,
    )

    runner.find_element("#close-offcanvas-backdrop").click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas")) == 0,
        timeout=4,
    )


# ------------------------------


def test_r_offcanvas_scrollable(dashr):
    r_app = load_r_app(
        (HERE.parent / "offcanvas" / "scrollable.R"), "offcanvas"
    )
    dashr.start_server(r_app)
    check_offcanvas_scrollable_callbacks(dashr)


def test_jl_offcanvas_scrollable(dashjl):
    jl_app = load_jl_app(
        (HERE.parent / "offcanvas" / "scrollable.jl"), "offcanvas"
    )
    dashjl.start_server(jl_app)
    check_offcanvas_scrollable_callbacks(dashjl)


def check_offcanvas_scrollable_callbacks(runner):
    wait.until(
        lambda: len(runner.find_elements("#open-offcanvas-scrollable")) != 0,
        timeout=4,
    )

    runner.find_element("#open-offcanvas-scrollable").click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas")) != 0,
        timeout=4,
    )

    runner.find_element("#close-offcanvas-scrollable").click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas")) == 0,
        timeout=4,
    )


# ------------------------------


def test_r_offcanvas_placement(dashr):
    r_app = load_r_app(
        (HERE.parent / "offcanvas" / "placement.R"), "offcanvas"
    )
    dashr.start_server(r_app)
    check_offcanvas_placement_callbacks(dashr)


def test_jl_offcanvas_placement(dashjl):
    jl_app = load_jl_app(
        (HERE.parent / "offcanvas" / "placement.jl"), "offcanvas"
    )
    dashjl.start_server(jl_app)
    check_offcanvas_placement_callbacks(dashjl)


def check_offcanvas_placement_callbacks(runner):
    wait.until(
        lambda: len(runner.find_elements("#open-offcanvas-placement")) != 0,
        timeout=4,
    )
    runner.find_element("#open-offcanvas-placement").click()
    wait.until(
        lambda: len(runner.find_elements(".offcanvas")) != 0,
        timeout=4,
    )

    # Changing placement
    for option in ["end", "top", "bottom", "start"]:
        runner.find_element(
            "#_dbcprivate_radioitems_offcanvas-placement-selector_input_"
            f"{option}"
        ).click()
        wait.until(
            lambda: len(runner.find_elements(f".offcanvas-{option}")) != 0,
            timeout=4,
        )
