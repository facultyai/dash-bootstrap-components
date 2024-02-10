import dash_bootstrap_components as dbc
import pytest
from dash import Dash

components = [
    component(id="link", href="javascript:alert('xss')")
    for component in (
        dbc.Badge,
        dbc.Button,
        dbc.DropdownMenuItem,
        dbc.CardLink,
        dbc.ListGroupItem,
        dbc.NavLink,
        dbc.NavbarBrand,
    )
]


@pytest.mark.parametrize("component", components)
def test_xss001_banned_protocols(dash_duo, component):
    app = Dash()
    app.layout = component
    dash_duo.start_server(app)

    element = dash_duo.find_element("#link")
    assert element.get_attribute("href") == "about:blank"


def test_xss002_navbar_brand_href(dash_duo):
    app = Dash()
    app.layout = dbc.NavbarSimple(
        brand="NavbarSimple",
        brand_href="javascript:alert('xss')",
        id="navbarsimple",
    )
    dash_duo.start_server(app)

    element = dash_duo.find_element(".navbar-brand")
    assert element.get_attribute("href") == "about:blank"


@pytest.mark.parametrize("external_link", [True, False])
def test_xss003_breadcrumb_link(dash_duo, external_link):
    app = Dash()
    app.layout = dbc.Breadcrumb(
        items=[
            {
                "label": "Docs",
                "href": "javascript:alert('xss')",
                "external_link": external_link,
            }
        ],
        id="breadcrumb",
    )
    dash_duo.start_server(app)

    element = dash_duo.find_element("#breadcrumb a")
    assert element.get_attribute("href") == "about:blank"
