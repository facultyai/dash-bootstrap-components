using DashBootstrapComponents, DashHtmlComponents

top_card = dbc_card(
    [
        dbc_cardimg(src = "/static/images/placeholder286x180.png", top = true),
        dbc_cardbody(html_p("This card has an image at the top", className = "card-text")),
    ],
    style = Dict("width" => "18rem"),
);

bottom_card = dbc_card(
    [
        dbc_cardbody(html_p("This has a bottom image", className = "card-text")),
        dbc_cardimg(src = "/static/images/placeholder286x180.png", bottom = true),
    ],
    style = Dict("width" => "18rem"),
);

cards = dbc_row([dbc_col(top_card, width = "auto"), dbc_col(bottom_card, width = "auto")]);
