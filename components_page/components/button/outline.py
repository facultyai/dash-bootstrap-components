import dash_bootstrap_components as dbc
from dash import html

buttons = html.Div(
    [
        dbc.Button("Primary", outline=True, color="primary", className="me-1"),
        dbc.Button(
            "Secondary", outline=True, color="secondary", className="me-1"
        ),
        dbc.Button("Success", outline=True, color="success", className="me-1"),
        dbc.Button("Warning", outline=True, color="warning", className="me-1"),
        dbc.Button("Danger", outline=True, color="danger", className="me-1"),
        dbc.Button("Info", outline=True, color="info", className="me-1"),
        dbc.Button("Light", outline=True, color="light", className="me-1"),
        dbc.Button("Dark", outline=True, color="dark"),
    ]
)
