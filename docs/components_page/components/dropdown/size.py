import dash_html_components as html
import dash_bootstrap_components as dbc

items = [
    dbc.DropdownMenuItem("First"),
    dbc.DropdownMenuItem(divider=True),
    dbc.DropdownMenuItem("Second"),
]

dropdown = html.Div(
    [
        html.H4("Dropdown sizing"),
        html.Div(
            [
                dbc.DropdownMenu(label="lg dropdown", children=items, style={"margin-bottom": "1rem"}),
                dbc.DropdownMenu(label="normal dropdown", children=items, style={"margin-bottom": "1rem"}),
                dbc.DropdownMenu(label="sm dropdown", children=items),
            ]
        )
    ]
)
