import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

cards = html.Div(
    [
        make_subheading("Card", "card"),
        dbc.Card(
            [
                dbc.CardHeader("This is the header"),
                dbc.CardBody(
                    [
                        html.H4("Card title", className="card-title"),
                        html.P(
                            "This is some card text", className="card-text"
                        ),
                    ]
                ),
                dbc.CardFooter("This is the footer"),
            ],
            style={"width": "18rem"},
        ),
    ],
    className="mb-4",
)
