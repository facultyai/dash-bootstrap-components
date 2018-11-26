import dash_bootstrap_components as dbc

items = [
    dbc.DropdownMenuItem("First"),
    dbc.DropdownMenuItem(divider=True),
    dbc.DropdownMenuItem("Second"),
]

dropdown = dbc.Row(
    [
        dbc.Col(
            dbc.DropdownMenu(
                label="Dropdown (default)", children=items, direction="down"
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
)
