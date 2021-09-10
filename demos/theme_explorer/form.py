import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

form = html.Div(
    [
        make_subheading("Form", "form"),
        dbc.Form(
            [
                html.Div(
                    [
                        dbc.Label("Username"),
                        dbc.Input(
                            placeholder="Enter your username",
                            type="text",
                        ),
                        dbc.FormText(
                            [
                                "Can't remember your username? ",
                                html.A(
                                    "Click here.",
                                    href="#",
                                    className="text-muted",
                                    style={"textDecoration": "underline"},
                                ),
                            ]
                        ),
                    ]
                ),
                html.Div(
                    [
                        dbc.Label("Username"),
                        dbc.Input(
                            placeholder="Enter your password",
                            type="password",
                        ),
                        dbc.FormText(
                            [
                                "Can't remember your password? ",
                                html.A(
                                    "Click here.",
                                    href="#",
                                    className="text-muted",
                                    style={"textDecoration": "underline"},
                                ),
                            ]
                        ),
                    ]
                ),
            ]
        ),
    ],
    className="mb-4",
)
