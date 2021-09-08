import dash_bootstrap_components as dbc
from dash import html

items = [
    dbc.DropdownMenuItem("Item 1"),
    dbc.DropdownMenuItem("Item 2"),
    dbc.DropdownMenuItem("Item 3"),
]

dropdowns = html.Div(
    [
        dbc.DropdownMenu(
            items, label="Primary", color="primary", class_name="m-1"
        ),
        dbc.DropdownMenu(
            items, label="Secondary", color="secondary", class_name="m-1"
        ),
        dbc.DropdownMenu(
            items, label="Success", color="success", class_name="m-1"
        ),
        dbc.DropdownMenu(
            items, label="Warning", color="warning", class_name="m-1"
        ),
        dbc.DropdownMenu(
            items, label="Danger", color="danger", class_name="m-1"
        ),
        dbc.DropdownMenu(items, label="Info", color="info", class_name="m-1"),
    ],
    style={"display": "flex", "flexWrap": "wrap"},
)
