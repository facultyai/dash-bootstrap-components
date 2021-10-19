import dash_bootstrap_components as dbc

dropdown = dbc.DropdownMenu(
    label="Menu",
    menu_variant="dark",
    children=[
        dbc.DropdownMenuItem("Item 1"),
        dbc.DropdownMenuItem("Item 2"),
        dbc.DropdownMenuItem("Item 3"),
    ],
)
