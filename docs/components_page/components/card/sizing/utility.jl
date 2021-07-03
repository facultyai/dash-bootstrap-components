using DashBootstrapComponents, DashHtmlComponents

cards = html_div([
    dbc_card(
        dbc_cardbody([
            html_h5("75% width card", class_name="card-title"),
            html_p(
                [
                    "This card uses the ",
                    html_code("w-75"),
                    " class to set the width to 75%",
                ],
                class_name="card-text",
            ),
        ]),
        class_name="w-75 mb-3",
    ),
    dbc_card(
        dbc_cardbody([
            html_h5("50% width card", class_name="card-title"),
            html_p(
                [
                    "This card uses the ",
                    html_code("w-50"),
                    " class to set the width to 50%",
                ],
                class_name="card-text",
            ),
        ]),
        class_name="w-50",
    ),
]);
