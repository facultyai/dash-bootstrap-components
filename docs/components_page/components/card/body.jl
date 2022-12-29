using DashBootstrapComponents

cards = html_div([
    dbc_card(dbc_cardbody("This is some text within a card body"), className = "mb-3"),
    dbc_card("This is also within a body", body = true),
]);
