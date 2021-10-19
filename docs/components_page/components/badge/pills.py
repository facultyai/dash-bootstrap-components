import dash_bootstrap_components as dbc
from dash import html

badges = html.Span(
    [
        dbc.Badge("Primary", pill=True, color="primary", className="me-1"),
        dbc.Badge("Secondary", pill=True, color="secondary", className="me-1"),
        dbc.Badge("Success", pill=True, color="success", className="me-1"),
        dbc.Badge("Warning", pill=True, color="warning", className="me-1"),
        dbc.Badge("Danger", pill=True, color="danger", className="me-1"),
        dbc.Badge("Info", pill=True, color="info", className="me-1"),
        dbc.Badge(
            "Light",
            pill=True,
            color="light",
            text_color="dark",
            className="me-1",
        ),
        dbc.Badge("Dark", pill=True, color="dark"),
    ]
)
