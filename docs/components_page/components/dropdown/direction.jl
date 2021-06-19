using DashBootstrapComponents

items = [
    dbc_dropdownmenuitem("First"),
    dbc_dropdownmenuitem(divider=true),
    dbc_dropdownmenuitem("Second"),
];

dropdown = dbc_row(
    [
        dbc_col(
            dbc_dropdownmenu(
                label="Dropdown (default)",
                children=items,
                direction="down",
            ),
            width="auto",
        ),
        dbc_col(
            dbc_dropdownmenu(label="Dropleft", children=items, direction="left"),
            width="auto",
        ),
        dbc_col(
            dbc_dropdownmenu(label="Dropright", children=items, direction="right"),
            width="auto",
        ),
        dbc_col(
            dbc_dropdownmenu(label="Dropup", children=items, direction="up"),
            width="auto",
        ),
    ],
    justify="between",
);
