import dash_bootstrap_components as dbc
import dash_html_components as html

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
            class_name="mb-2",
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
            class_name="mb-2",
        ),
    ],
    class_name="mb-4",
)
