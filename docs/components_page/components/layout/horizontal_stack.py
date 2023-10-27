import dash_bootstrap_components as dbc
from dash import html

stack = html.Div(
    [
        dbc.Stack(
            [
                html.Div("Horizontal"),
                html.Div("Stack"),
                html.Div("Without"),
                html.Div("Gaps"),
            ],
            direction="horizontal",
        ),
        html.Hr(),
        dbc.Stack(
            [
                html.Div("Horizontal"),
                html.Div("Stack"),
                html.Div("With"),
                html.Div("Gaps"),
            ],
            direction="horizontal",
            gap=3,
        ),
    ]
)
