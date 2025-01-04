import dash_bootstrap_components as dbc
from dash import html

tooltip = html.Div(
    [
        html.P(
            [
                "I wonder what ",
                html.Span(
                    "floccinaucinihilipilification",
                    id="tooltip-target",
                    style={"textDecoration": "underline", "cursor": "pointer"},
                ),
                " means?",
            ]
        ),
        dbc.Tooltip(
            "Noun: rare, " "the action or habit of estimating something as worthless.",
            target="tooltip-target",
        ),
    ]
)
