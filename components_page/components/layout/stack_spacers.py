import dash_bootstrap_components as dbc
from dash import html

stack = html.Div(
    [
        dbc.Stack(
            [
                html.Div("Start", className="bg-light border"),
                html.Div(
                    "Middle (ms-auto)", className="ms-auto bg-light border"
                ),
                html.Div("End", className="bg-light border"),
            ],
            direction="horizontal",
            gap=3,
        ),
        html.Hr(),
        dbc.Stack(
            [
                html.Div("Start", className="bg-light border"),
                html.Div(
                    "Middle (mx-auto)", className="mx-auto bg-light border"
                ),
                html.Div("End", className="bg-light border"),
            ],
            direction="horizontal",
            gap=3,
        ),
    ]
)
