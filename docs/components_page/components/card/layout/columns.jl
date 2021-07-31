using DashBootstrapComponents, DashHtmlComponents

card_content_1 = [
    dbc_cardheader("Card header"),
    dbc_cardbody([
        html_h5("Card title", className="card-title"),
        html_p("This is some card content that we'll reuse", className="card-text"),
    ]),
];

card_content_2 = dbc_cardbody([
    html_blockquote(
        [
            html_p(
                "A learning experience is one of those things that says, " *
                "'You know that thing you just did? Don't do that.'",
            ),
            html_footer(html_small("Douglas Adams", className="text-muted")),
        ],
        className="blockquote",
    ),
]);

card_content_3 = [
    dbc_cardimg(src="/static/images/placeholder286x180.png", top=true),
    dbc_cardbody([
        html_h5("Card with image", className="card-title"),
        html_p(
            "This card has an image on top, and a button below",
            className="card-text",
        ),
        dbc_button("Click me!", color="primary"),
    ]),
];


cards = dbc_cardcolumns([
    dbc_card(card_content_1, color="primary", inverse=true),
    dbc_card(card_content_2, body=true),
    dbc_card(card_content_1, color="secondary", inverse=true),
    dbc_card(card_content_3, color="info", inverse=true),
    dbc_card(card_content_1, color="success", inverse=true),
    dbc_card(card_content_1, color="warning", inverse=true),
    dbc_card(card_content_1, color="danger", inverse=true),
    dbc_card(card_content_3, color="light"),
    dbc_card(card_content_1, color="dark", inverse=true),
]);
