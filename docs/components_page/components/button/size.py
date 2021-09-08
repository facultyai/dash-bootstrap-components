import dash_bootstrap_components as dbc
from dash import html

buttons = html.Div(
    [
        dbc.Button("Large button", size="lg", class_name="me-1"),
        dbc.Button("Regular button", class_name="me-1"),
        dbc.Button("Small button", size="sm"),
    ]
)
