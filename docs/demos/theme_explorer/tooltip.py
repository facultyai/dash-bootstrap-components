import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

tooltip = html.Div(
    [
        make_subheading("Tooltip", "tooltip"),
        html.P(
            [
                "I wonder what ",
                html.Span(
                    "floccinaucinihilipilification", id="tooltip-target"
                ),
                " means?",
            ]
        ),
        dbc.Tooltip(
            "Noun: rare, "
            "the action or habit of estimating something as worthless.",
            target="tooltip-target",
        ),
    ],
    className="mb-4",
)
