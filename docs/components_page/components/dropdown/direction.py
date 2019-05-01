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
            ),
            width="auto",
        ),
        dbc.Col(
            dbc.DropdownMenu(
                label="Dropleft", children=items, direction="left"
            ),
            width="auto",
        ),
        dbc.Col(
            dbc.DropdownMenu(
                label="Dropright", children=items, direction="right"
            ),
            width="auto",
        ),
        dbc.Col(
            dbc.DropdownMenu(label="Dropup", children=items, direction="up"),
            width="auto",
        ),
    ],
    justify="between",
)
