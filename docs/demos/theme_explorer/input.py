import dash_bootstrap_components as dbc
import dash_html_components as html

from .util import make_subheading

input_ = html.Div(
    [
        make_subheading("Input", "input"),
        dbc.FormGroup(
            [
                dbc.Label("Valid text input"),
                dbc.Input(type="text", valid=True),
                dbc.FormFeedback("That's a valid input!", valid=True),
            ]
        ),
        dbc.FormGroup(
            [
                dbc.Label("Invalid text input"),
                dbc.Input(type="text", invalid=True),
                dbc.FormFeedback("That's an invalid input..."),
            ]
        ),
    ]
)

checklist_items = html.Div(
    [
        make_subheading("Checklist", "input"),
        dbc.Row(
            [
                dbc.Col(
                    dbc.Checklist(
                        id="gallery_checklist1",
                        options=[
                            {
                                "label": "Option {}".format(i),
                                "value": i,
                            }
                            for i in range(3)
                        ],
                        value=[1, 2],
                    )
                ),
                dbc.Col(
                    dbc.Checklist(
                        id="gallery_checklist2",
                        options=[
                            {
                                "label": "Option {}".format(i),
                                "value": i,
                            }
                            for i in range(3)
                        ],
                        value=[1, 2],
                        switch=True,
                    )
                ),
            ]
        ),
        html.H5("Inline checklist", class_name="mt-3"),
        dbc.Checklist(
            id="gallery_checklist3",
            options=[
                {"label": f"Option {i + 1}", "value": i} for i in range(5)
            ],
            value=[0, 4],
            inline=True,
        ),
    ],
    class_name="mb-4",
)

radio_items = html.Div(
    [
        make_subheading("RadioItems", "input"),
        dbc.RadioItems(
            id="gallery_radio1",
            options=[
                {"label": f"Option {i + 1}", "value": i} for i in range(3)
            ],
            value=0,
        ),
        html.H5("Inline radioitems", class_name="mt-3"),
        dbc.RadioItems(
            id="gallery_radio2",
            options=[
                {"label": f"Option {i + 1}", "value": i} for i in range(5)
            ],
            value=0,
            inline=True,
        ),
    ]
)

input_group = html.Div(
    [
        make_subheading("InputGroup and addons", "input_group"),
        dbc.InputGroup(
            [
                dbc.InputGroupAddon(
                    dbc.Button("To the left!", color="danger"),
                    addon_type="prepend",
                ),
                dbc.Input(type="text"),
            ],
            class_name="my-3",
        ),
        dbc.InputGroup(
            [
                dbc.Input(type="text"),
                dbc.InputGroupAddon(
                    dbc.Button("To the right!", color="success"),
                    addon_type="append",
                ),
            ],
            class_name="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.InputGroupAddon("@", addon_type="prepend"),
                dbc.Input(type="text", placeholder="Enter username"),
            ],
            class_name="mb-3",
        ),
    ],
    class_name="mb-4",
)
