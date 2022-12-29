using DashBootstrapComponents

list_group = dbc_listgroup([
    dbc_listgroupitem([
        html_div(
            [
                html_h5("This item has a heading", className = "mb-1"),
                html_small("Yay!", className = "text-success"),
            ],
            className = "d-flex w-100 justify-content-between",
        ),
        html_p("And some text underneath", className = "mb-1"),
        html_small("Plus some small print.", className = "text-muted"),
    ]),
    dbc_listgroupitem([
        html_div(
            [
                html_h5("This item also has a heading", className = "mb-1"),
                html_small("Ok!", className = "text-warning"),
            ],
            className = "d-flex w-100 justify-content-between",
        ),
        html_p("And some more text underneath too", className = "mb-1"),
        html_small("Plus even more small print.", className = "text-muted"),
    ]),
]);
