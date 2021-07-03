import dash_bootstrap_components as dbc
import dash_html_components as html

from .util import make_subheading

buttons1 = dbc.Col(
    [
        make_subheading("Button", "button"),
        html.Div(
            [
                dbc.Button("Primary", color="primary", class_name="mr-1 mt-1"),
                dbc.Button(
                    "Secondary", color="secondary", class_name="mr-1 mt-1"
                ),
                dbc.Button("Success", color="success", class_name="mr-1 mt-1"),
                dbc.Button("Warning", color="warning", class_name="mr-1 mt-1"),
                dbc.Button("Danger", color="danger", class_name="mr-1 mt-1"),
                dbc.Button("Info", color="info", class_name="mr-1 mt-1"),
            ],
            class_name="mb-2",
        ),
        html.Div(
            [
                dbc.Button(
                    "Primary",
                    outline=True,
                    color="primary",
                    class_name="mr-1 mt-1",
                ),
                dbc.Button(
                    "Secondary",
                    outline=True,
                    color="secondary",
                    class_name="mr-1 mt-1",
                ),
                dbc.Button(
                    "Success",
                    outline=True,
                    color="success",
                    class_name="mr-1 mt-1",
                ),
                dbc.Button(
                    "Warning",
                    outline=True,
                    color="warning",
                    class_name="mr-1 mt-1",
                ),
                dbc.Button(
                    "Danger",
                    outline=True,
                    color="danger",
                    class_name="mr-1 mt-1",
                ),
                dbc.Button(
                    "Info", outline=True, color="info", class_name="mr-1 mt-1"
                ),
            ],
            class_name="mb-2",
        ),
        html.Div(
            [
                dbc.Button("Regular", color="primary", class_name="mr-1 mt-1"),
                dbc.Button(
                    "Active",
                    color="primary",
                    active=True,
                    class_name="mr-1 mt-1",
                ),
                dbc.Button(
                    "Disabled",
                    color="primary",
                    disabled=True,
                    class_name="mr-1 mt-1",
                ),
            ],
            class_name="mb-2",
        ),
        html.Div(
            [
                dbc.Button("Large button", size="lg", class_name="mr-1 mt-1"),
                dbc.Button("Regular button", class_name="mr-1 mt-1"),
                dbc.Button("Small button", size="sm", class_name="mr-1 mt-1"),
            ],
            class_name="mb-2",
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
            class_name="mb-2",
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
            class_name="mb-2",
        ),
    ],
    lg=6,
    xs=12,
)

buttons = dbc.Row([buttons1, buttons2], class_name="mb-4")
