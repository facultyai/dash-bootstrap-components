import dash_bootstrap_components as dbc
from dash import html

buttons = html.Div(
    [
        dbc.Button("Large button", size="lg", className="me-1"),
        dbc.Button("Regular button", className="me-1"),
        dbc.Button("Small button", size="sm"),
    ]
)
