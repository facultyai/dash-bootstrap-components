using DashBootstrapComponents

card_content = [
    dbc_cardheader("Card header"),
    dbc_cardbody([
        html_h5("Card title", className = "card-title"),
        html_p("This is some card content that we'll reuse", className = "card-text"),
    ]),
];

row_1 = dbc_row(
    [
        dbc_col(dbc_card(card_content, color = "primary", outline = true)),
        dbc_col(dbc_card(card_content, color = "secondary", outline = true)),
        dbc_col(dbc_card(card_content, color = "info", outline = true)),
    ],
    className = "mb-4",
);

row_2 = dbc_row(
    [
        dbc_col(dbc_card(card_content, color = "success", outline = true)),
        dbc_col(dbc_card(card_content, color = "warning", outline = true)),
        dbc_col(dbc_card(card_content, color = "danger", outline = true)),
    ],
    className = "mb-4",
);

row_3 = dbc_row([
    dbc_col(dbc_card(card_content, color = "light", outline = true)),
    dbc_col(dbc_card(card_content, color = "dark", outline = true)),
]);

cards = html_div([row_1, row_2, row_3]);
