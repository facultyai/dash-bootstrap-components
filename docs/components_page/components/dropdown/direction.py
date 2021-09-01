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
                label="Dropstart", children=items, direction="start"
            ),
            width="auto",
        ),
        dbc.Col(
            dbc.DropdownMenu(label="Dropend", children=items, direction="end"),
            width="auto",
        ),
        dbc.Col(
            dbc.DropdownMenu(label="Dropup", children=items, direction="up"),
            width="auto",
        ),
    ],
    justify="between",
)
