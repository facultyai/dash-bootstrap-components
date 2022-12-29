import dash_bootstrap_components as dbc
from dash import html

placeholder = html.Div(
    [
        dbc.Placeholder(xs=6),
        html.Br(),
        dbc.Placeholder(className="w-75"),
        html.Br(),
        dbc.Placeholder(style={"width": "25%"}),
    ]
)
