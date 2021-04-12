import dash_bootstrap_components as dbc
import dash_html_components as html

from .util import make_subheading

buttons1 = dbc.Col(
    [
        make_subheading("Button", "button"),
        html.Div(
            [
                dbc.Button("Primary", color="primary", className="mr-1 mt-1"),
                dbc.Button(
                    "Secondary", color="secondary", className="mr-1 mt-1"
                ),
                dbc.Button("Success", color="success", className="mr-1 mt-1"),
                dbc.Button("Warning", color="warning", className="mr-1 mt-1"),
                dbc.Button("Danger", color="danger", className="mr-1 mt-1"),
                dbc.Button("Info", color="info", className="mr-1 mt-1"),
            ],
            className="mb-2",
        ),
        html.Div(
            [
                dbc.Button(
                    "Primary",
                    outline=True,
                    color="primary",
                    className="mr-1 mt-1",
                ),
                dbc.Button(
                    "Secondary",
                    outline=True,
                    color="secondary",
                    className="mr-1 mt-1",
                ),
                dbc.Button(
                    "Success",
                    outline=True,
                    color="success",
                    className="mr-1 mt-1",
                ),
                dbc.Button(
                    "Warning",
                    outline=True,
                    color="warning",
                    className="mr-1 mt-1",
                ),
                dbc.Button(
                    "Danger",
                    outline=True,
                    color="danger",
                    className="mr-1 mt-1",
                ),
                dbc.Button(
                    "Info", outline=True, color="info", className="mr-1 mt-1"
                ),
            ],
            className="mb-2",
        ),
        html.Div(
            [
                dbc.Button("Regular", color="primary", className="mr-1 mt-1"),
                dbc.Button(
                    "Active",
                    color="primary",
                    active=True,
                    className="mr-1 mt-1",
                ),
                dbc.Button(
                    "Disabled",
                    color="primary",
                    disabled=True,
                    className="mr-1 mt-1",
                ),
            ],
            className="mb-2",
        ),
        html.Div(
            [
                dbc.Button("Large button", size="lg", className="mr-1 mt-1"),
                dbc.Button("Regular button", className="mr-1 mt-1"),
                dbc.Button("Small button", size="sm", className="mr-1 mt-1"),
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
    ],
    lg=6,
    xs=12,
)

buttons = dbc.Row([buttons1, buttons2], className="mb-4")
