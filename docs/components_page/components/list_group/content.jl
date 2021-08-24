using DashBootstrapComponents, DashHtmlComponents

list_group = dbc_listgroup([
    dbc_listgroupitem([
        html_div(
            [
                html_h5("This item has a heading", class_name="mb-1"),
                html_small("Yay!", class_name="text-success"),
            ],
            class_name="d-flex w-100 justify-content-between",
        ),
        html_p("And some text underneath", class_name="mb-1"),
        html_small("Plus some small print.", class_name="text-muted"),
    ]),
    dbc_listgroupitem([
        html_div(
            [
                html_h5(
                    "This item also has a heading", class_name="mb-1"
                ),
                html_small("Ok!", class_name="text-warning"),
            ],
            class_name="d-flex w-100 justify-content-between",
        ),
        html_p("And some more text underneath too", class_name="mb-1"),
        html_small(
            "Plus even more small print.", class_name="text-muted"
        ),
    ]),
]);
