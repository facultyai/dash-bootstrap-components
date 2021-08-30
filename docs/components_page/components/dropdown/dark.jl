using DashBootstrapComponents

dropdown = dbc_dropdownmenu(
    label = "Menu",
    menu_variant = "dark",
    children = [
        dbc_dropdownmenuitem("Item 1"),
        dbc_dropdownmenuitem("Item 2"),
        dbc_dropdownmenuitem("Item 3"),
    ],
)
