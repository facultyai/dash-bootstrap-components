using DashBootstrapComponents

dropdown = dbc_dropdownmenu(
    [
        dbc_dropdownmenuitem("Header", header = true),
        dbc_dropdownmenuitem("An item"),
        dbc_dropdownmenuitem(divider = true),
        dbc_dropdownmenuitem("Active and disabled", header = true),
        dbc_dropdownmenuitem("Active item", active = true),
        dbc_dropdownmenuitem("Disabled item", disabled = true),
        dbc_dropdownmenuitem(divider = true),
        html_p(
            "You can have other content here like text if you like.",
            className = "text-muted px-4 mt-4",
        ),
    ],
    label = "Menu",
);
