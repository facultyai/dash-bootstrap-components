import dash_bootstrap_components as dbc
from dash import html

row = dbc.Row(
    [
        dbc.Col(html.Div("One of three columns")),
        dbc.Col(html.Div("One of three columns")),
        dbc.Col(html.Div("One of three columns")),
    ],
    className="g-0",
)
