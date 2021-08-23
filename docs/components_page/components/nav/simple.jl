using DashBootstrapComponents

nav = dbc_nav([
    dbc_navitem(dbc_navlink("Active", active = true, href = "#")),
    dbc_navitem(dbc_navlink("A link", href = "#")),
    dbc_navitem(dbc_navlink("Another link", href = "#")),
    dbc_navitem(dbc_navlink("Disabled", disabled = true, href = "#")),
    dbc_dropdownmenu(
        [dbc_dropdownmenuitem("Item 1"), dbc_dropdownmenuitem("Item 2")],
        label = "Dropdown",
        nav = true,
    ),
]);
