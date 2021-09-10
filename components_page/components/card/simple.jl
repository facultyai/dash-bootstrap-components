using DashBootstrapComponents, DashHtmlComponents

card = dbc_card(
    [
        dbc_cardimg(src = "/static/images/placeholder286x180.png", top = true),
        dbc_cardbody([
            html_h4("Card title", className = "card-title"),
            html_p(
                "Some quick example text to build on the card title and " *
                "make up the bulk of the card's content.",
                className = "card-text",
            ),
            dbc_button("Go somewhere", color = "primary"),
        ]),
    ],
    style = Dict("width" => "18rem"),
);
