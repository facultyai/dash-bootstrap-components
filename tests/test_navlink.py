from dash import Dash, dcc, html
from dash.dependencies import Input, Output
from dash_bootstrap_components import NavLink
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait


def test_dbnl001_auto_active(dash_duo):
    """
    Checks that NavLink is able to automatically set active status based on the
    current location.
    """
    app = Dash()

    app.layout = html.Div(
        [
            # dcc.Location is required to fire events to History
            dcc.Location(id="url"),
            NavLink("Page 1", id="page-1-link", href="/page-1", active=True),
            NavLink("Page 2", id="page-2-link", href="/page-2", active=False),
            NavLink(
                "Page 3", id="page-3-link", href="/page-3", active="partial"
            ),
            NavLink(
                "Page 3 - extra",
                id="page-3-extra-link",
                href="/page-3/extra",
                active="exact",
            ),
            html.Div(id="content"),
        ]
    )

    dash_duo.start_server(app)

    assert "active" in dash_duo.wait_for_element_by_id(
        "page-1-link"
    ).get_attribute("class")
    assert "active" not in dash_duo.wait_for_element_by_id(
        "page-2-link"
    ).get_attribute("class")
    assert "active" not in dash_duo.wait_for_element_by_id(
        "page-3-link"
    ).get_attribute("class")
    assert "active" not in dash_duo.wait_for_element_by_id(
        "page-3-extra-link"
    ).get_attribute("class")

    dash_duo.wait_for_element_by_id("page-3-link").click()

    assert "active" in dash_duo.wait_for_element_by_id(
        "page-1-link"
    ).get_attribute("class")
    assert "active" not in dash_duo.wait_for_element_by_id(
        "page-2-link"
    ).get_attribute("class")
    assert "active" in dash_duo.wait_for_element_by_id(
        "page-3-link"
    ).get_attribute("class")
    assert "active" not in dash_duo.wait_for_element_by_id(
        "page-3-extra-link"
    ).get_attribute("class")

    dash_duo.wait_for_element_by_id("page-3-extra-link").click()

    assert "active" in dash_duo.wait_for_element_by_id(
        "page-1-link"
    ).get_attribute("class")
    assert "active" not in dash_duo.wait_for_element_by_id(
        "page-2-link"
    ).get_attribute("class")
    assert "active" in dash_duo.wait_for_element_by_id(
        "page-3-link"
    ).get_attribute("class")
    assert "active" in dash_duo.wait_for_element_by_id(
        "page-3-extra-link"
    ).get_attribute("class")


def test_dbnl_002_manual_active(dash_duo):
    """
    Update active status using a callback.
    """
    app = Dash()

    app.layout = html.Div(
        [
            # dcc.Location is required to fire events to History
            dcc.Location(id="url"),
            NavLink("Page 1", id="page-1-link", href="/page-1"),
            NavLink("Page 2", id="page-2-link", href="/page-2"),
            NavLink("Page 3", id="page-3-link", href="/page-3"),
            html.Div(id="content"),
        ]
    )

    @app.callback(
        [Output("page-{}-link".format(i), "active") for i in range(1, 4)],
        Input("url", "pathname"),
    )
    def set_active(pathname):
        return [pathname == "/page-{}".format(i) for i in range(1, 4)]

    dash_duo.start_server(app)

    assert all(
        [
            "active"
            not in dash_duo.wait_for_element_by_id(
                "page-{}-link".format(i)
            ).get_attribute("class")
            for i in range(1, 4)
        ]
    )

    dash_duo.wait_for_element_by_id("page-1-link").click()

    # wait for callback to update page
    WebDriverWait(dash_duo.driver, timeout=10).until(
        lambda d: "active"
        in d.find_element(By.ID, "page-1-link").get_attribute("class")
    )

    assert "active" in dash_duo.wait_for_element_by_id(
        "page-1-link"
    ).get_attribute("class")
    assert "active" not in dash_duo.wait_for_element_by_id(
        "page-2-link"
    ).get_attribute("class")
    assert "active" not in dash_duo.wait_for_element_by_id(
        "page-3-link"
    ).get_attribute("class")

    dash_duo.wait_for_element_by_id("page-3-link").click()

    # wait for callback to update page
    WebDriverWait(dash_duo.driver, timeout=10).until(
        lambda d: "active"
        not in d.find_element(By.ID, "page-1-link").get_attribute("class")
    )

    assert "active" not in dash_duo.wait_for_element_by_id(
        "page-1-link"
    ).get_attribute("class")
    assert "active" not in dash_duo.wait_for_element_by_id(
        "page-2-link"
    ).get_attribute("class")
    assert "active" in dash_duo.wait_for_element_by_id(
        "page-3-link"
    ).get_attribute("class")
