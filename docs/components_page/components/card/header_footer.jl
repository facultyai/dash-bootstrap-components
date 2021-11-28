using DashBootstrapComponents

card = dbc_card(
    [
        dbc_cardheader("This is the header"),
        dbc_cardbody([
            html_h4("Card title", className = "card-title"),
            html_p("This is some card text", className = "card-text"),
        ]),
        dbc_cardfooter("This is the footer"),
    ],
    style = Dict("width" => "18rem"),
);
