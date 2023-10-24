import dash_bootstrap_components as dbc
from dash import html

stack = html.Div(
    [
        dbc.Stack(
            [
                html.Div("This stack has no gaps"),
                html.Div("Next item"),
                html.Div("Last item"),
            ]
        ),
        html.Hr(),
        dbc.Stack(
            [
                html.Div("This stack has gaps"),
                html.Div("Next item"),
                html.Div("Last item"),
            ],
            gap=3,
        ),
    ]
)
