import dash_bootstrap_components as dbc
import dash_html_components as html

cards = html.Div(
    [
        dbc.Card(
            dbc.CardBody(
                [
                    html.H5("75% width card", className="card-title"),
                    html.P(
                        [
                            "This card uses the ",
                            html.Code("w-75"),
                            " class to set the width to 75%",
                        ],
                        className="card-text",
                    ),
                ]
            ),
            className="w-75 mb-3",
        ),
        dbc.Card(
            dbc.CardBody(
                [
                    html.H5("50% width card", className="card-title"),
                    html.P(
                        [
                            "This card uses the ",
                            html.Code("w-50"),
                            " class to set the width to 50%",
                        ],
                        className="card-text",
                    ),
                ]
            ),
            className="w-50",
        ),
    ]
)
