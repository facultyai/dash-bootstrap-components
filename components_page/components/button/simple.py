import dash_bootstrap_components as dbc
from dash import html

buttons = html.Div(
    [
        dbc.Button("Primary", color="primary", class_name="me-1"),
        dbc.Button("Secondary", color="secondary", class_name="me-1"),
        dbc.Button("Success", color="success", class_name="me-1"),
        dbc.Button("Warning", color="warning", class_name="me-1"),
        dbc.Button("Danger", color="danger", class_name="me-1"),
        dbc.Button("Info", color="info", class_name="me-1"),
        dbc.Button("Light", color="light", class_name="me-1"),
        dbc.Button("Dark", color="dark", class_name="me-1"),
        dbc.Button("Link", color="link"),
    ]
)
