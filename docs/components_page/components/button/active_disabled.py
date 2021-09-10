import dash_bootstrap_components as dbc
from dash import html

buttons = html.Div(
    [
        dbc.Button("Regular", color="primary", className="me-1"),
        dbc.Button("Active", color="primary", active=True, className="me-1"),
        dbc.Button("Disabled", color="primary", disabled=True),
    ]
)
