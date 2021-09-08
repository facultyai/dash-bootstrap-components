import dash_bootstrap_components as dbc
from dash import html

buttons = html.Div(
    [
        dbc.Button(
            "Primary", outline=True, color="primary", class_name="me-1"
        ),
        dbc.Button(
            "Secondary", outline=True, color="secondary", class_name="me-1"
        ),
        dbc.Button(
            "Success", outline=True, color="success", class_name="me-1"
        ),
        dbc.Button(
            "Warning", outline=True, color="warning", class_name="me-1"
        ),
        dbc.Button("Danger", outline=True, color="danger", class_name="me-1"),
        dbc.Button("Info", outline=True, color="info", class_name="me-1"),
        dbc.Button("Light", outline=True, color="light", class_name="me-1"),
        dbc.Button("Dark", outline=True, color="dark"),
    ]
)
