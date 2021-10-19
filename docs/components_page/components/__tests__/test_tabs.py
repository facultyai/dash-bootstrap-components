"""
Testing of callbacks in non-Python Tabs snippets.
"""
from pathlib import Path

import dash.testing.wait as wait

from .helpers import load_jl_app, load_r_app

HERE = Path(__file__).parent


def test_r_tabs_card(dashr):
    r_app = load_r_app((HERE.parent / "tabs" / "card.R"), "card")
    dashr.start_server(r_app)
    check_tabs_card_callbacks(dashr)


def test_jl_tabs_card(dashjl):
    jl_app = load_jl_app((HERE.parent / "tabs" / "card.jl"), "card")
    dashjl.start_server(jl_app)
    check_tabs_card_callbacks(dashjl)


def check_tabs_card_callbacks(runner):
    tab_links = runner.find_elements("#card-tabs > div.nav-item > a.nav-link")
    wait.until(lambda: tab_links[1].text == "Tab 2", timeout=4)

    tab_links[1].click()

    wait.until(
        lambda: runner.find_element("#card-content").text
        == "This is tab tab-2",
        timeout=4,
    )


# ------------------------------


active_tab_content_r = """
tab1_content <- dbcCard(
    dbcCardBody(
        list(
            htmlP("This is tab 1!", className = "card-text"),
            dbcButton("Click here", color = "success")
        )
    ),
    className = "mt-3"
)

tab2_content <- dbcCard(
    dbcCardBody(
        list(
            htmlP("This is tab 2!", className = "card-text"),
            dbcButton("Don't click here", color = "danger")
        )
    ),
    className = "mt-3",
)
"""

active_tab_content_jl = """
tab1_content = dbc_card(
    dbc_cardbody([
        html_p("This is tab 1!", className="card-text"),
        dbc_button("Click here", color="success"),
    ]),
    className="mt-3",
);

tab2_content = dbc_card(
    dbc_cardbody([
        html_p("This is tab 2!", className="card-text"),
        dbc_button("Don't click here", color="danger"),
    ]),
    className="mt-3",
);
"""


def test_r_tabs_active_tab(dashr):
    r_app = load_r_app(
        (HERE.parent / "tabs" / "active_tab.R"),
        "tabs",
        extra_args=active_tab_content_r,
    )
    dashr.start_server(r_app)
    check_tabs_active_tab_callbacks(dashr)


def test_jl_tabs_active_tab(dashjl):
    jl_app = load_jl_app(
        (HERE.parent / "tabs" / "active_tab.jl"),
        "tabs",
        extra_args=active_tab_content_jl,
    )
    dashjl.start_server(jl_app)
    check_tabs_active_tab_callbacks(dashjl)


def check_tabs_active_tab_callbacks(runner):
    # Get julia to wait until it's loaded
    wait.until(lambda: len(runner.find_elements(".card")) > 0, timeout=4)

    # Default view on landing
    wait.until(
        lambda: runner.find_element("div.card-body > p.card-text").text
        == "This is tab 1!",
        timeout=4,
    )
    wait.until(
        lambda: runner.find_element("div.card-body > button.btn-success").text
        == "Click here",
        timeout=4,
    )

    # Activate the second tab
    runner.find_elements("a.nav-link")[1].click()

    wait.until(
        lambda: runner.find_element("div.card-body > p.card-text").text
        == "This is tab 2!",
        timeout=4,
    )
    wait.until(
        lambda: runner.find_element("div.card-body > button.btn-danger").text
        == "Don't click here",
        timeout=4,
    )
