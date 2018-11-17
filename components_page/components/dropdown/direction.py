import dash_html_components as html
import dash_bootstrap_components as dbc

items = [
    dbc.DropdownMenuItem("First"),
    dbc.DropdownMenuItem(divider=True),
    dbc.DropdownMenuItem("Second"),
]

dropdown = html.Div(
    [
        html.H4("Dropdown direction"),
        dbc.Row(
            [
                dbc.Col(
                    dbc.DropdownMenu(
                        label="Dropup", children=items, direction="up"
                    )
                ),
                dbc.Col(
                    dbc.DropdownMenu(
                        label="Dropleft", children=items, direction="left"
                    )
                ),
                dbc.Col(
                    dbc.DropdownMenu(
                        label="Dropright", children=items, direction="right"
                    )
                ),
            ]
        ),
    ]
)
