using DashBootstrapComponents, DashHtmlComponents

items = [
    dbc_dropdownmenuitem("Item 1"),
    dbc_dropdownmenuitem("Item 2"),
    dbc_dropdownmenuitem("Item 3"),
];

dropdowns = html_div(
    [
        dbc_dropdownmenu(items, label="Primary", color="primary", class_name="m-1"),
        dbc_dropdownmenu(
            items,
            label="Secondary",
            color="secondary",
            class_name="m-1",
        ),
        dbc_dropdownmenu(items, label="Success", color="success", class_name="m-1"),
        dbc_dropdownmenu(items, label="Warning", color="warning", class_name="m-1"),
        dbc_dropdownmenu(items, label="Danger", color="danger", class_name="m-1"),
        dbc_dropdownmenu(items, label="Info", color="info", class_name="m-1"),
        dbc_dropdownmenu(items, label="Link", color="link", class_name="m-1"),
    ],
    style=Dict("display" => "flex", "flexWrap" => "wrap"),
);
