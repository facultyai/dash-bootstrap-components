import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

items = [
    dbc.DropdownMenuItem("Header", header=True),
    dbc.DropdownMenuItem("An item"),
    dbc.DropdownMenuItem(divider=True),
    dbc.DropdownMenuItem("Active and disabled", header=True),
    dbc.DropdownMenuItem("Active item", active=True),
    dbc.DropdownMenuItem("Disabled item", disabled=True),
    dbc.DropdownMenuItem(divider=True),
    html.P(
        "You can have other content here like text if you like.",
        className="text-muted px-4 mt-4",
    ),
]

dropdown_menu = html.Div(
    [
        make_subheading("DropdownMenu", "dropdown_menu"),
        html.Div(
            [
                dbc.DropdownMenu(
                    items, label="Primary", color="primary", className="m-1"
                ),
                dbc.DropdownMenu(
                    items,
                    label="Secondary",
                    color="secondary",
                    className="m-1",
                ),
                dbc.DropdownMenu(
                    items, label="Success", color="success", className="m-1"
                ),
                dbc.DropdownMenu(
                    items, label="Warning", color="warning", className="m-1"
                ),
                dbc.DropdownMenu(
                    items, label="Danger", color="danger", className="m-1"
                ),
                dbc.DropdownMenu(items, label="Info", color="info", className="m-1"),
                dbc.DropdownMenu(items, label="Link", color="link", className="m-1"),
                dbc.DropdownMenu(
                    label="Dark Backdrop Menu",
                    menu_variant="dark",
                    children=items,
                    className="m-1",
                ),
            ],
            className="mb-2",
            style={"display": "flex", "flexWrap": "wrap"},
        ),
        html.Div(
            [
                dbc.DropdownMenu(
                    label="large dropdown",
                    size="lg",
                    children=items,
                    className="m-1",
                ),
                dbc.DropdownMenu(
                    label="normal dropdown",
                    children=items,
                    className="m-1",
                ),
                dbc.DropdownMenu(
                    label="small dropdown",
                    size="sm",
                    children=items,
                    className="m-1",
                ),
            ],
            className="mb-2",
            style={"display": "flex", "flexWrap": "wrap"},
        ),
    ],
)
