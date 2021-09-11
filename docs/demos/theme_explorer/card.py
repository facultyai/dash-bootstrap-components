import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

cards = html.Div(
    [
        make_subheading("Card", "card"),
        dbc.CardGroup(
            [
                dbc.Card(
                    [
                        dbc.CardHeader("Header"),
                        dbc.CardBody(
                            [
                                html.H5(
                                    "This card has a title",
                                    className="card-title",
                                ),
                                html.P("And some text", className="card-text"),
                            ]
                        ),
                    ]
                ),
                dbc.Card(
                    [
                        dbc.CardBody(
                            [
                                html.H5(
                                    "This card has a title",
                                    className="card-title",
                                ),
                                html.P(
                                    "and some text, but no header",
                                    className="card-text",
                                ),
                            ]
                        )
                    ],
                    outline=True,
                    color="primary",
                ),
                dbc.Card(
                    [
                        dbc.CardBody(
                            [
                                html.H5(
                                    "This card has a title",
                                    className="card-title",
                                ),
                                html.P(
                                    "and some text, and a footer!",
                                    className="card-text",
                                ),
                            ]
                        ),
                        dbc.CardFooter("Footer"),
                    ],
                    outline=True,
                    color="dark",
                ),
            ]
        ),
    ],
    className="mb-4",
)
