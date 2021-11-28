using DashBootstrapComponents

card = dbc_card(
    [
        dbc_cardimg(
            src = "/static/images/placeholder286x180.png",
            top = true,
            style = Dict("opacity" => 0.3),
        ),
        dbc_cardimgoverlay(
            dbc_cardbody([
                html_h4("Card title", className = "card-title"),
                html_p(
                    "An example of using an image in the background of " * "a card.",
                    className = "card-text",
                ),
                dbc_button("Go somewhere", color = "primary"),
            ],),
        ),
    ],
    style = Dict("width" => "18rem"),
)
