import dash_bootstrap_components as dbc
import dash_html_components as html

items = [
    dbc.DropdownMenuItem("Item 1"),
    dbc.DropdownMenuItem("Item 2"),
    dbc.DropdownMenuItem("Item 3"),
]

dropdowns = html.Div(
    [
        dbc.DropdownMenu(
            items, label="Primary", color="primary", className="m-1"
        ),
        dbc.DropdownMenu(
            items, label="Secondary", color="secondary", className="m-1"
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
    ],
    style={"display": "flex", "flexWrap": "wrap"},
)
