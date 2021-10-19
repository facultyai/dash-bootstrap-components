using DashBootstrapComponents

items = [
    dbc_dropdownmenuitem("First"),
    dbc_dropdownmenuitem(divider = true),
    dbc_dropdownmenuitem("Second"),
];

dropdown = dbc_row(
    [
        dbc_col(
            dbc_dropdownmenu(
                label = "Dropdown (default)",
                children = items,
                direction = "down",
            ),
            width = "auto",
        ),
        dbc_col(
            dbc_dropdownmenu(label = "Dropstart", children = items, direction = "start"),
            width = "auto",
        ),
        dbc_col(
            dbc_dropdownmenu(label = "Dropend", children = items, direction = "end"),
            width = "auto",
        ),
        dbc_col(
            dbc_dropdownmenu(label = "Dropup", children = items, direction = "up"),
            width = "auto",
        ),
    ],
    justify = "between",
);
