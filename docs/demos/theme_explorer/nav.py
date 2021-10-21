import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

nav_items = [
    dbc.NavItem(dbc.NavLink("Active", active=True, href="#")),
    dbc.NavItem(dbc.NavLink("A link", href="#")),
    dbc.NavItem(dbc.NavLink("Another link", href="#")),
    dbc.NavItem(dbc.NavLink("Disabled", disabled=True, href="#")),
    dbc.DropdownMenu(
        [dbc.DropdownMenuItem("Item 1"), dbc.DropdownMenuItem("Item 2")],
        label="Dropdown",
        nav=True,
    ),
]

nav1 = dbc.Col(
    dbc.Nav(
        nav_items,
    ),
    md=6,
    xs=12,
)

nav2 = dbc.Col(
    dbc.Nav(nav_items, pills=True),
    md=6,
    xs=12,
)

nav = html.Div(
    [make_subheading("Nav", "nav"), dbc.Row([nav1, nav2])],
    className="mb-4",
)
