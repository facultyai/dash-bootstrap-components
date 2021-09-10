import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

DBC_HOME = "https://dash-bootstrap-components.opensource.faculty.ai/"
DBC_GITHUB = "https://github.com/facultyai/dash-bootstrap-components"

navbar_children = [
    dbc.NavItem(dbc.NavLink("GitHub", href=DBC_GITHUB, target="_blank")),
    dbc.DropdownMenu(
        nav=True,
        in_navbar=True,
        label="Menu",
        children=[
            dbc.DropdownMenuItem("Entry 1", href="https://google.com"),
            dbc.DropdownMenuItem("Entry 2", href="/test"),
            dbc.DropdownMenuItem(divider=True),
            dbc.DropdownMenuItem("A heading", header=True),
            dbc.DropdownMenuItem(
                "Entry 3",
                href="/external-relative",
                external_link=True,
            ),
            dbc.DropdownMenuItem("Entry 4 - does nothing"),
        ],
    ),
]

navbar = html.Div(
    [
        make_subheading("Navbar", "navbar"),
        dbc.NavbarSimple(
            children=navbar_children,
            brand="Navbar",
            brand_href=DBC_HOME,
            color="primary",
            dark=True,
            className="mb-3",
        ),
        dbc.NavbarSimple(
            children=navbar_children,
            brand="Navbar",
            brand_href=DBC_HOME,
            color="light",
            className="mb-3",
        ),
        dbc.NavbarSimple(
            children=navbar_children,
            brand="Navbar",
            brand_href=DBC_HOME,
            color="dark",
            dark=True,
        ),
    ],
    className="mb-4",
)
