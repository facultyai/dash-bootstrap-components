import dash_bootstrap_components as dbc
from dash import html

placeholder = html.Div(
    [
        dbc.Placeholder(xs=6),
        html.Br(),
        dbc.Placeholder(xs=4, button=True),
    ]
)
