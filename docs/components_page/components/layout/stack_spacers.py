import dash_bootstrap_components as dbc
from dash import html

demo_div = "bg-primary-subtle border border-primary-subtle p-2"

stack = html.Div(
    [
        dbc.Stack(
            [
                html.Div("Start", className=demo_div),
                html.Div(
                    "Middle (ms-auto)",
                    className="ms-auto " + demo_div,
                ),
                html.Div("End", className=demo_div),
            ],
            direction="horizontal",
            gap=3,
        ),
        html.Hr(),
        dbc.Stack(
            [
                html.Div("Start", className=demo_div),
                html.Div(
                    "Middle (mx-auto)",
                    className="mx-auto " + demo_div,
                ),
                html.Div("End", className=demo_div),
            ],
            direction="horizontal",
            gap=3,
        ),
    ]
)
