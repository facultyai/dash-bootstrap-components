using DashBootstrapComponents

items = [
    dbc_dropdownmenuitem("Action"),
    dbc_dropdownmenuitem("Another action"),
    dbc_dropdownmenuitem("Something else here"),
    dbc_dropdownmenuitem(divider = true),
    dbc_dropdownmenuitem("Something else here after the divider"),
];

dropdown = dbc_row([
    dbc_col(
        dbc_dropdownmenu(
            label = "Left-aligned menu (default)",
            children = items,
            align_end = false,
        ),
    ),
    dbc_col(
        dbc_dropdownmenu(label = "Right-aligned menu", children = items, align_end = true),
    ),
]);
