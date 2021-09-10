import dash_bootstrap_components as dbc
from dash import html

badges = html.Span(
    [
        dbc.Badge("Primary", color="primary", className="me-1"),
        dbc.Badge("Secondary", color="secondary", className="me-1"),
        dbc.Badge("Success", color="success", className="me-1"),
        dbc.Badge("Warning", color="warning", className="me-1"),
        dbc.Badge("Danger", color="danger", className="me-1"),
        dbc.Badge("Info", color="info", className="me-1"),
        dbc.Badge("Light", text_color="dark", color="light", className="me-1"),
        dbc.Badge("Dark", color="dark"),
    ]
)
