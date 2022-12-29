using DashBootstrapComponents

button_group = dbc_buttongroup([
    dbc_button("First"),
    dbc_button("Second"),
    dbc_dropdownmenu(
        [dbc_dropdownmenuitem("Item 1"), dbc_dropdownmenuitem("Item 2")],
        label = "Dropdown",
        group = true,
    ),
]);
