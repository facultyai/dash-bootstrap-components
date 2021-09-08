import dash_bootstrap_components as dbc
from dash import html

input_group = html.Div(
    [
        dbc.InputGroup([dbc.InputGroupText("Large"), dbc.Input()], size="lg"),
        html.Br(),
        dbc.InputGroup([dbc.InputGroupText("Default"), dbc.Input()]),
        html.Br(),
        dbc.InputGroup([dbc.InputGroupText("Small"), dbc.Input()], size="sm"),
    ]
)
