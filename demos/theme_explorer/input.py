import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

input_ = html.Div(
    [
        make_subheading("Input", "input"),
        html.Div(
            [
                dbc.Label("Valid text input"),
                dbc.Input(type="text", valid=True),
                dbc.FormFeedback("That's a valid input!", type="valid"),
            ]
        ),
        html.Div(
            [
                dbc.Label("Invalid text input"),
                dbc.Input(type="text", invalid=True),
                dbc.FormFeedback("That's an invalid input...", type="invalid"),
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
        html.H5("Inline checklist", className="mt-3"),
        dbc.Checklist(
            id="gallery_checklist3",
            options=[
                {"label": f"Option {i + 1}", "value": i} for i in range(5)
            ],
            value=[0, 4],
            inline=True,
        ),
    ],
    className="mb-4",
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
        html.H5("Inline radioitems", className="mt-3"),
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
                dbc.Button("To the left!", color="danger"),
                dbc.Input(type="text"),
            ],
            className="my-3",
        ),
        dbc.InputGroup(
            [
                dbc.Input(type="text"),
                dbc.Button("To the right!", color="success"),
            ],
            className="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.InputGroupText("@"),
                dbc.Input(type="text", placeholder="Enter username"),
            ],
            className="mb-3",
        ),
    ],
    className="mb-4",
)
