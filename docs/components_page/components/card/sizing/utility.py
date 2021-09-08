import dash_bootstrap_components as dbc
from dash import html

cards = html.Div(
    [
        dbc.Card(
            dbc.CardBody(
                [
                    html.H5("75% width card", class_name="card-title"),
                    html.P(
                        [
                            "This card uses the ",
                            html.Code("w-75"),
                            " class to set the width to 75%",
                        ],
                        class_name="card-text",
                    ),
                ]
            ),
            class_name="w-75 mb-3",
        ),
        dbc.Card(
            dbc.CardBody(
                [
                    html.H5("50% width card", class_name="card-title"),
                    html.P(
                        [
                            "This card uses the ",
                            html.Code("w-50"),
                            " class to set the width to 50%",
                        ],
                        class_name="card-text",
                    ),
                ]
            ),
            class_name="w-50",
        ),
    ]
)
