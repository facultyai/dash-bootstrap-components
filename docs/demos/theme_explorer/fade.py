import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

fade = html.Div(
    [
        make_subheading("Fade", "fade"),
        html.Div(
            [
                dbc.Button(
                    "Toggle fade",
                    id="fade-button",
                    style={"marginBottom": "1rem"},
                ),
                dbc.Fade(
                    dbc.Card(
                        dbc.CardBody(
                            html.P(
                                "This content fades in and out",
                                className="card-text",
                            )
                        )
                    ),
                    id="fade",
                    is_in=True,
                ),
            ]
        ),
    ],
)
