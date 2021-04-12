import dash_bootstrap_components as dbc
import dash_html_components as html

from .util import make_subheading

form = html.Div(
    [
        make_subheading("Form", "form"),
        dbc.Form(
            [
                dbc.FormGroup(
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
                dbc.FormGroup(
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
