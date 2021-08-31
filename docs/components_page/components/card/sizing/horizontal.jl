using DashBootstrapComponents, DashHtmlComponents

card = dbc_card(
    [
        dbc_row(
            [
                dbc_col(
                    dbc_cardimg(
                        src = "/static/images/placeholder286x180.png",
                        class_name = "img-fluid rounded-start",
                    ),
                    class_name = "col-md-4",
                ),
                dbc_col(
                    dbc_cardbody([
                        html_h4("Card title", class_name = "card-title"),
                        html_p(
                            "This is a wider card with supporting text " *
                            "below as a natural lead-in to additional " *
                            "content. This content is a bit longer.",
                            class_name = "card-text",
                        ),
                        html_small(
                            "Last updated 3 mins ago",
                            class_name = "card-text text-muted",
                        ),
                    ]),
                    class_name = "col-md-8",
                ),
            ],
            class_name = "g-0 d-flex align-items-center",
        ),
    ],
    class_name = "mb-3",
    style = Dict("maxWidth" => "540px"),
)
