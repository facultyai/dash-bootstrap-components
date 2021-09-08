import dash_bootstrap_components as dbc
from dash import html

button = html.Div(
    [
        dbc.Button("Button 1", class_name="me-md-2"),
        dbc.Button("Button 2", class_name="me-md-2"),
        dbc.Button("Button 3"),
    ],
    class_name="d-grid gap-2 d-md-flex justify-content-md-end",
)
