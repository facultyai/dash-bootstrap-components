from dash import Dash, html, dcc
import dash_bootstrap_components as dbc

app = Dash(__name__)

NavLink1 = dbc.NavLink("dbc link1", href="")
NavLink2 = dbc.NavLink("dbc link2", href="javascript:alert('NavLink')")

NavbarSimple = dbc.NavbarSimple(
    brand="NavbarSimple",
    brand_href="javascript:alert('NavbarSimple')",
)
Badge = dbc.Badge("badge", href="javascript:alert('Badge')")


Breadcrumb = dbc.Breadcrumb(
    items=[
        {
            "label": "Docs",
            "href": "javascript:alert('Breadcrumb1')",
            "external_link": True,
        },
        {
            "label": "Components",
            "href": "javascript:alert('Breadcrumb2')",
            "external_link": True,
        },
        {"label": "Breadcrumb", "active": True},
    ],
)

Button = dbc.Button("button", href="javascript:alert('Button')")

CardLink = dbc.Card(dbc.CardLink("cardlink", href="javascript:alert('Card')"))

ListGroupItem = dbc.ListGroup(
    [
        dbc.ListGroupItem("Active item", active=True),
        dbc.ListGroupItem("Item 2", href="javascript:alert('ListGroupItem')"),
    ]
)

NavbarBrand = dbc.Navbar(
    dbc.NavbarBrand("Navbar Brand", href="javascript:alert('NavbarBrand')")
)

DropdownMenuItem = dbc.DropdownMenu(
    dbc.DropdownMenuItem(
        "DropdownMenuItem", href="javascript:alert('DropdownMenuItem')"
    )
)


app.layout = html.Div(
    [
         NavLink1,
         NavLink2,
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

if __name__ == "__main__":
    app.run_server(debug=True)
