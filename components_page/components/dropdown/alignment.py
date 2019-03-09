import dash_bootstrap_components as dbc

items = [
    dbc.DropdownMenuItem("Action"),
    dbc.DropdownMenuItem("Another action"),
    dbc.DropdownMenuItem("Something else here"),
    dbc.DropdownMenuItem(divider=True),
    dbc.DropdownMenuItem("Something else here after the divider"),
]

dropdown = dbc.Row(
    [
        dbc.Col(
            dbc.DropdownMenu(
                label="Left-aligned menu (default)",
                children=items,
                right=False,
            )
        ),
        dbc.Col(
            dbc.DropdownMenu(
                label="Right-aligned menu", children=items, right=True
            )
        ),
    ]
)
