import dash_bootstrap_components as dbc
from dash import html

placeholder = html.Div(
    [
        dbc.Placeholder(animation="glow", className="w-100"),
        dbc.Placeholder(animation="wave", className="w-100"),
    ]
)
