import dash_bootstrap_components as dbc
from dash import html

stack = html.Div(
    [
        dbc.Stack(
            [
                html.Div(
                    "This stack has no gaps", className="bg-light border"
                ),
                html.Div("Next item", className="bg-light border"),
                html.Div("Last item", className="bg-light border"),
            ]
        ),
        html.Hr(),
        dbc.Stack(
            [
                html.Div("This stack has gaps", className="bg-light border"),
                html.Div("Next item", className="bg-light border"),
                html.Div("Last item", className="bg-light border"),
            ],
            gap=3,
        ),
    ]
)
