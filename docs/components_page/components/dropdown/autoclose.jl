using DashBootstrapComponents

items = [
    dbc_dropdownmenuitem("First"),
    dbc_dropdownmenuitem(divider=true),
    dbc_dropdownmenuitem("Second"),
]

dropdown = dbc.Row(
    [
        dbc.Col(
            dbc_dropdownmenu(
                label="Auto close (Default)", children=items, auto_close=true
            ),
            width="auto",
        ),
        dbc.Col(
            dbc_dropdownmenu(
                label="Clickable Outside", children=items, auto_close="inside"
            ),
            width="auto",
        ),
        dbc.Col(
            dbc_dropdownmenu(
                label="Clickable Inside", children=items, auto_close="outside"
            ),
            width="auto",
        ),
        dbc.Col(
            dbc_dropdownmenu(
                label="No auto close", children=items, auto_close=false
            ),
            width="auto",
        ),
    ],
    justify="between",
)
