from dash import Dash, html
import dash_bootstrap_components as dbc


def test_xss001_banned_protocols(dash_duo):
    app = Dash()

    NavLink = dbc.NavLink(
        "dbc link", href="javascript:alert('NavLink')", id="navlink"
    )

    NavbarSimple = dbc.NavbarSimple(
        brand="NavbarSimple",
        brand_href="javascript:alert('NavbarSimple')",
        id="navbarsimple",
    )
    Badge = dbc.Badge("badge", href="javascript:alert('Badge')", id="badge")

    Breadcrumb = dbc.Breadcrumb(
        items=[
            {
                "label": "Docs",
                "href": "javascript:alert('Breadcrumb1')",
                "external_link": True,
            },
            {"label": "Breadcrumb", "active": True},
        ],
        id="breadcrumb",
    )

    Button = dbc.Button(
        "button", href="javascript:alert('Button')", id="button"
    )

    CardLink = dbc.Card(
        dbc.CardLink(
            "cardlink",
            href="javascript:alert('Card')",
            id="cardlink",
        ),
    )

    ListGroupItem = dbc.ListGroup(
        [
            dbc.ListGroupItem("Active item", active=True),
            dbc.ListGroupItem(
                "Item 2",
                href="javascript:alert('ListGroupItem')",
                id="listgroupitem",
            ),
        ]
    )

    NavbarBrand = dbc.Navbar(
        dbc.NavbarBrand(
            "Navbar Brand",
            href="javascript:alert('NavbarBrand')",
            id="navbarbrand",
        )
    )

    DropdownMenuItem = dbc.DropdownMenu(
        dbc.DropdownMenuItem(
            "DropdownMenuItem",
            href="javascript:alert('DropdownMenuItem')",
            id="dropdownmenuitem",
        )
    )

    app.layout = html.Div(
        [
            NavLink,
            NavbarSimple,
            Badge,
            Breadcrumb,
            Button,
            CardLink,
            ListGroupItem,
            NavbarBrand,
            DropdownMenuItem,
        ]
    )

    dash_duo.start_server(app)

    for element_id in [
        "#navlink",
        "#badge",
        "#button",
        "#cardlink",
        "#listgroupitem",
        "#navbarbrand",
        "#dropdownmenuitem",
    ]:

        element = dash_duo.find_element(element_id)
        assert (
            element.get_attribute("href") == "about:blank"
        ), f"Failed prop: {element_id}.href"

    element = dash_duo.find_element("#breadcrumb a")
    assert (
        element.get_attribute("href") == "about:blank"
    ), "Failed prop: breadcrumb.href"

    element = dash_duo.find_element(".navbar-brand")
    assert (
        element.get_attribute("href") == "about:blank"
    ), "Failed prop: navbarsimple.href"
