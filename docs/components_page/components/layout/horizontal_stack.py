import dash_bootstrap_components as dbc
from dash import html

demo_div = "bg-primary-subtle border border-primary-subtle p-2"

stack = html.Div(
    [
        dbc.Stack(
            [
                html.Div("Horizontal", className=demo_div),
                html.Div("Stack", className=demo_div),
                html.Div("Without", className=demo_div),
                html.Div("Gaps", className=demo_div),
            ],
            direction="horizontal",
        ),
        html.Hr(),
        dbc.Stack(
            [
                html.Div("Horizontal", className=demo_div),
                html.Div("Stack", className=demo_div),
                html.Div("With", className=demo_div),
                html.Div("Gaps", className=demo_div),
            ],
            direction="horizontal",
            gap=3,
        ),
    ]
)
