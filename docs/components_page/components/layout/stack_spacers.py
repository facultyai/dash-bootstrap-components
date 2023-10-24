import dash_bootstrap_components as dbc
from dash import html

demo_div = "bg-primary-subtle border border-primary-subtle p-2"

stack = html.Div(
    [
        dbc.Stack(
            [
                html.Div("Start"),
                html.Div(
                    "Middle (ms-auto)",
                    className="ms-auto",
                ),
                html.Div("End"),
            ],
            direction="horizontal",
            gap=3,
        ),
        html.Hr(),
        dbc.Stack(
            [
                html.Div("Start"),
                html.Div("Middle (mx-auto)", className="mx-auto"),
                html.Div("End"),
            ],
            direction="horizontal",
            gap=3,
        ),
    ]
)
