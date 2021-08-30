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
                label="Auto close (Default)", children=items, auto_close=True
            ),
            width="auto",
        ),
        dbc.Col(
            dbc.DropdownMenu(
                label="Clickable Outside", children=items, auto_close="inside"
            ),
            width="auto",
        ),
        dbc.Col(
            dbc.DropdownMenu(
                label="Clickable Inside", children=items, auto_close="outside"
            ),
            width="auto",
        ),
        dbc.Col(
            dbc.DropdownMenu(
                label="No auto close", children=items, auto_close=False
            ),
            width="auto",
        ),
    ],
    justify="between",
)
