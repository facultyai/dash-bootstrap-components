using DashBootstrapComponents

card = dbc_card(
    dbc_listgroup(
        [
            dbc_listgroupitem("Item 1"),
            dbc_listgroupitem("Item 2"),
            dbc_listgroupitem("Item 3"),
        ],
        flush = true,
    ),
    style = Dict("width" => "18rem"),
);
