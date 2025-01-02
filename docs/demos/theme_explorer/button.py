import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

buttons1 = dbc.Col(
    [
        make_subheading("Button", "button"),
        html.Div(
            [
                dbc.Button("Primary", color="primary", className="me-1 mt-1"),
                dbc.Button("Secondary", color="secondary", className="me-1 mt-1"),
                dbc.Button("Success", color="success", className="me-1 mt-1"),
                dbc.Button("Warning", color="warning", className="me-1 mt-1"),
                dbc.Button("Danger", color="danger", className="me-1 mt-1"),
                dbc.Button("Info", color="info", className="me-1 mt-1"),
            ],
            className="mb-2",
        ),
        html.Div(
            [
                dbc.Button(
                    "Primary",
                    outline=True,
                    color="primary",
                    className="me-1 mt-1",
                ),
                dbc.Button(
                    "Secondary",
                    outline=True,
                    color="secondary",
                    className="me-1 mt-1",
                ),
                dbc.Button(
                    "Success",
                    outline=True,
                    color="success",
                    className="me-1 mt-1",
                ),
                dbc.Button(
                    "Warning",
                    outline=True,
                    color="warning",
                    className="me-1 mt-1",
                ),
                dbc.Button(
                    "Danger",
                    outline=True,
                    color="danger",
                    className="me-1 mt-1",
                ),
                dbc.Button("Info", outline=True, color="info", className="me-1 mt-1"),
            ],
            className="mb-2",
        ),
        html.Div(
            [
                dbc.Button("Regular", color="primary", className="me-1 mt-1"),
                dbc.Button(
                    "Active",
                    color="primary",
                    active=True,
                    className="me-1 mt-1",
                ),
                dbc.Button(
                    "Disabled",
                    color="primary",
                    disabled=True,
                    className="me-1 mt-1",
                ),
            ],
            className="mb-2",
        ),
        html.Div(
            [
                dbc.Button("Large button", size="lg", className="me-1 mt-1"),
                dbc.Button("Regular button", className="me-1 mt-1"),
                dbc.Button("Small button", size="sm", className="me-1 mt-1"),
            ],
            className="mb-2",
        ),
    ],
    lg=6,
    xs=12,
)

buttons2 = dbc.Col(
    [
        make_subheading("ButtonGroup", "buttongroups"),
        html.Div(
            dbc.ButtonGroup(
                [
                    dbc.Button("Success", color="success"),
                    dbc.Button("Warning", color="warning"),
                    dbc.Button("Danger", color="danger"),
                ]
            ),
            className="mb-2",
        ),
        html.Div(
            dbc.ButtonGroup(
                [
                    dbc.Button("Left", outline=True, color="primary"),
                    dbc.Button("Middle", outline=True, color="primary"),
                    dbc.Button("Right", outline=True, color="primary"),
                ]
            ),
            className="mb-2",
        ),
        dbc.Row(
            [
                dbc.Col(
                    html.Div(
                        dbc.ButtonGroup(
                            [
                                dbc.Button("First"),
                                dbc.Button("Second"),
                                dbc.DropdownMenu(
                                    [
                                        dbc.DropdownMenuItem("Item 1"),
                                        dbc.DropdownMenuItem("Item 2"),
                                    ],
                                    label="Dropdown",
                                    group=True,
                                ),
                            ],
                            vertical=True,
                        ),
                        className="mb-2",
                    ),
                ),
                dbc.Col(
                    html.Div(
                        [
                            dbc.ButtonGroup(
                                [
                                    dbc.Button("Left"),
                                    dbc.Button("Large"),
                                    dbc.Button("Right"),
                                ],
                                size="lg",
                                className="m-1",
                            ),
                            dbc.ButtonGroup(
                                [
                                    dbc.Button("Left"),
                                    dbc.Button("Regular"),
                                    dbc.Button("Right"),
                                ],
                                size="md",
                                className="m-1",
                            ),
                            dbc.ButtonGroup(
                                [
                                    dbc.Button("Left"),
                                    dbc.Button("Small"),
                                    dbc.Button("Right"),
                                ],
                                size="sm",
                                className="m-1",
                            ),
                        ],
                        className="mb-2",
                    ),
                ),
            ]
        ),
    ],
    lg=6,
    xs=12,
)

buttons = dbc.Row([buttons1, buttons2], className="mb-4")
