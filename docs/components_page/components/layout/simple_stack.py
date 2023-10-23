import dash_bootstrap_components as dbc
from dash import html

demo_div = "bg-primary-subtle border border-primary-subtle p-2"

stack = html.Div(
    [
        dbc.Stack(
            [
                html.Div(
                    "This stack has no gaps", className=demo_div
                ),
                html.Div("Next item", className=demo_div),
                html.Div("Last item", className=demo_div),
            ]
        ),
        html.Hr(),
        dbc.Stack(
            [
                html.Div(
                    "This stack has gaps", className=demo_div
                ),
                html.Div("Next item", className=demo_div),
                html.Div("Last item", className=demo_div),
            ],
            gap=3,
        ),
    ]
)
