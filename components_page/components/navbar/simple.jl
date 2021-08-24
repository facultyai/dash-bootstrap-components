using DashBootstrapComponents

navbar = dbc_navbarsimple(
    children = [
        dbc_navitem(dbc_navlink("Page 1", href = "#")),
        dbc_dropdownmenu(
            children = [
                dbc_dropdownmenuitem("More pages", header = true),
                dbc_dropdownmenuitem("Page 2", href = "#"),
                dbc_dropdownmenuitem("Page 3", href = "#"),
            ],
            nav = true,
            in_navbar = true,
            label = "More",
        ),
    ],
    brand = "NavbarSimple",
    brand_href = "#",
    color = "primary",
    dark = true,
);
