import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

spinner = html.Div(
    [
        make_subheading("Spinner", "spinner"),
        html.Div(
            [
                dbc.Spinner(color=col)
                for col in [
                    "primary",
                    "secondary",
                    "success",
                    "warning",
                    "danger",
                ]
            ],
            className="mb-2",
        ),
        html.Div(
            [
                dbc.Spinner(color=col, type="grow")
                for col in [
                    "primary",
                    "secondary",
                    "success",
                    "warning",
                    "danger",
                ]
            ],
            className="mb-2",
        ),
    ],
    className="mb-4",
)
