"""
Testing of callbacks in non-Python Offcanvas snippets.
"""
from pathlib import Path

import dash.testing.wait as wait
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait

from .helpers import load_jl_app, load_r_app

HERE = Path(__file__).parent


def _click_open_button(runner, button_id):
    btn = WebDriverWait(runner.driver, 5).until(
        EC.presence_of_element_located((By.ID, button_id))
    )
    btn.click()
    assert WebDriverWait(runner.driver, 5).until(
        EC.presence_of_element_located((By.CSS_SELECTOR, ".offcanvas.show"))
    )


def _dismiss_with_esc(runner):
    offcanvas = WebDriverWait(runner.driver, 5).until(
        EC.presence_of_element_located((By.CLASS_NAME, "offcanvas"))
    )
    offcanvas.send_keys(Keys.ESCAPE)
    assert WebDriverWait(runner.driver, 5).until_not(
        EC.presence_of_element_located((By.CLASS_NAME, "offcanvas"))
    )


def _click_radio(runner, radio_id, option):
    label_id = f"_dbcprivate_radioitems_{radio_id}_input_{option}"
    wait.until(
        lambda: len(runner.find_elements(f"#{label_id}")) != 0,
        timeout=8,
    )
    runner.driver.find_element_by_id(label_id).click()


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
    # When offcanvas-backdrop is clicked, the offcanvas disappears
    _click_open_button(runner, "open-offcanvas")
    _dismiss_with_esc(runner)


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
    _click_open_button(runner, "open-offcanvas-backdrop")
    assert len(runner.find_elements(".offcanvas-backdrop")) != 0
    _dismiss_with_esc(runner)

    _click_radio(runner, "offcanvas-backdrop-selector", "false")
    _click_open_button(runner, "open-offcanvas-backdrop")
    assert len(runner.find_elements(".offcanvas-backdrop")) == 0


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
    _click_open_button(runner, "open-offcanvas-scrollable")


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
    for option in ["end", "top", "bottom", "start"]:
        _click_radio(runner, "offcanvas-placement-selector", option)
        _click_open_button(runner, "open-offcanvas-placement")
        assert len(runner.find_elements(f".offcanvas-{option}")) != 0
        _dismiss_with_esc(runner)
