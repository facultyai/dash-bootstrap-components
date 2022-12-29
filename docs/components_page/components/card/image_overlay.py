import dash_bootstrap_components as dbc
from dash import html

card = dbc.Card(
    [
        dbc.CardImg(
            src="/static/images/placeholder286x180.png",
            top=True,
            style={"opacity": 0.3},
        ),
        dbc.CardImgOverlay(
            dbc.CardBody(
                [
                    html.H4("Card title", className="card-title"),
                    html.P(
                        "An example of using an image in the background of "
                        "a card.",
                        className="card-text",
                    ),
                    dbc.Button("Go somewhere", color="primary"),
                ],
            ),
        ),
    ],
    style={"width": "18rem"},
)
