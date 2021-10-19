using DashBootstrapComponents, DashHtmlComponents

first_card = dbc_card(
    dbc_cardbody([
        html_h5("Card title", className = "card-title"),
        html_p("This card has some text content, but not much else"),
        dbc_button("Go somewhere", color = "primary"),
    ]),
);


second_card = dbc_card(
    dbc_cardbody([
        html_h5("Card title", className = "card-title"),
        html_p(
            "This card also has some text content and not much else, but " *
            "it is twice as wide as the first card.",
        ),
        dbc_button("Go somewhere", color = "primary"),
    ]),
);


cards = dbc_row([dbc_col(first_card, width = 4), dbc_col(second_card, width = 8)]);
