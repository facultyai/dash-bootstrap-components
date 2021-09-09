using DashBootstrapComponents, DashHtmlComponents

card = dbc_card(
    [
        dbc_row(
            [
                dbc_col(
                    dbc_cardimg(
                        src = "/static/images/placeholder286x180.png",
                        className = "img-fluid rounded-start",
                    ),
                    className = "col-md-4",
                ),
                dbc_col(
                    dbc_cardbody([
                        html_h4("Card title", className = "card-title"),
                        html_p(
                            "This is a wider card with supporting text " *
                            "below as a natural lead-in to additional " *
                            "content. This content is a bit longer.",
                            className = "card-text",
                        ),
                        html_small(
                            "Last updated 3 mins ago",
                            className = "card-text text-muted",
                        ),
                    ]),
                    className = "col-md-8",
                ),
            ],
            className = "g-0 d-flex align-items-center",
        ),
    ],
    className = "mb-3",
    style = Dict("maxWidth" => "540px"),
)
