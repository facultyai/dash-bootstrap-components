import dash_bootstrap_components as dbc
from dash import html

stack = html.Div(
    [
        dbc.Stack(
            [
                html.Div("Horizontal", className="bg-light border"),
                html.Div("Stack", className="bg-light border"),
                html.Div("Without", className="bg-light border"),
                html.Div("Gaps", className="bg-light border"),
            ],
            direction="horizontal",
        ),
        html.Hr(),
        dbc.Stack(
            [
                html.Div("Horizontal", className="bg-light border"),
                html.Div("Stack", className="bg-light border"),
                html.Div("With", className="bg-light border"),
                html.Div("Gaps", className="bg-light border"),
            ],
            direction="horizontal",
            gap=3,
        ),
    ]
)
