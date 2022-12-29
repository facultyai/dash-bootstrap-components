using DashBootstrapComponents

list_group = html_div([
    dbc_listgroup(
        [
            dbc_listgroupitem("Item 1"),
            dbc_listgroupitem("Item 2"),
            dbc_listgroupitem("Item 3"),
        ],
        horizontal = true,
        className = "mb-2",
    ),
    dbc_listgroup(
        [
            dbc_listgroupitem("Item 1"),
            dbc_listgroupitem("Item 2"),
            dbc_listgroupitem("Item 3"),
        ],
        horizontal = "lg",
    ),
]);
