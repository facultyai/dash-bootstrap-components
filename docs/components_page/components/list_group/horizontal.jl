using DashBootstrapComponents, DashHtmlComponents

list_group = html_div([
    dbc_listgroup(
        [
            dbc_listgroupitem("Item 1"),
            dbc_listgroupitem("Item 2"),
            dbc_listgroupitem("Item 3"),
        ],
        horizontal=true,
        class_name="mb-2",
    ),
    dbc_listgroup(
        [
            dbc_listgroupitem("Item 1"),
            dbc_listgroupitem("Item 2"),
            dbc_listgroupitem("Item 3"),
        ],
        horizontal="lg",
    ),
]);
