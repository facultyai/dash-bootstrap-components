using DashBootstrapComponents, DashHtmlComponents

cards = html_div([
    dbc_card(
        dbc_cardbody([
            html_h5("75% width card", className = "card-title"),
            html_p(
                [
                    "This card uses the ",
                    html_code("w-75"),
                    " class to set the width to 75%",
                ],
                className = "card-text",
            ),
        ]),
        className = "w-75 mb-3",
    ),
    dbc_card(
        dbc_cardbody([
            html_h5("50% width card", className = "card-title"),
            html_p(
                [
                    "This card uses the ",
                    html_code("w-50"),
                    " class to set the width to 50%",
                ],
                className = "card-text",
            ),
        ]),
        className = "w-50",
    ),
]);
