using DashBootstrapComponents, DashHtmlComponents

cards = dbc_carddeck([
    dbc_card(
        dbc_cardbody([
            html_h5("Card 1", class_name="card-title"),
            html_p(
                "This card has some text content, which is a little " *
                "bit longer than the second card.",
                class_name="card-text",
            ),
            dbc_button("Click here", color="success", class_name="mt-auto"),
        ]),
    ),
    dbc_card(
        dbc_cardbody([
            html_h5("Card 2", class_name="card-title"),
            html_p("This card has some text content.", class_name="card-text"),
            dbc_button("Click here", color="warning", class_name="mt-auto"),
        ]),
    ),
    dbc_card(
        dbc_cardbody([
            html_h5("Card 3", class_name="card-title"),
            html_p(
                "This card has some text content, which is longer " *
                "than both of the other two cards, in order to " *
                "demonstrate the equal height property of cards in a " *
                "card group.",
                class_name="card-text",
            ),
            dbc_button("Click here", color="danger", class_name="mt-auto"),
        ]),
    ),
]);
