using DashBootstrapComponents

items = [
    dbc_dropdownmenuitem("Item 1"),
    dbc_dropdownmenuitem("Item 2"),
    dbc_dropdownmenuitem("Item 3"),
];

dropdowns = html_div(
    [
        dbc_dropdownmenu(items, label = "Primary", color = "primary", className = "m-1"),
        dbc_dropdownmenu(
            items,
            label = "Secondary",
            color = "secondary",
            className = "m-1",
        ),
        dbc_dropdownmenu(items, label = "Success", color = "success", className = "m-1"),
        dbc_dropdownmenu(items, label = "Warning", color = "warning", className = "m-1"),
        dbc_dropdownmenu(items, label = "Danger", color = "danger", className = "m-1"),
        dbc_dropdownmenu(items, label = "Info", color = "info", className = "m-1"),
    ],
    style = Dict("display" => "flex", "flexWrap" => "wrap"),
);
