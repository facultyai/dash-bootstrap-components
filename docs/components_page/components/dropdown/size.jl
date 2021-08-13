using DashBootstrapComponents, DashHtmlComponents

items = [
    dbc_dropdownmenuitem("First"),
    dbc_dropdownmenuitem(divider=true),
    dbc_dropdownmenuitem("Second"),
];

dropdown = html_div([
    dbc_dropdownmenu(
        label="large dropdown",
        bs_size="lg",
        children=items,
        class_name="mb-3",
    ),
    dbc_dropdownmenu(label="normal dropdown", children=items, class_name="mb-3"),
    dbc_dropdownmenu(label="small dropdown", bs_size="sm", children=items),
])
;
