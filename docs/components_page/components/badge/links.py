import dash_bootstrap_components as dbc
from dash import html

badges = html.Span(
    [
        dbc.Badge(
            "Primary",
            href="#",
            color="primary",
            className="me-1 text-decoration-none",
        ),
        dbc.Badge(
            "Secondary",
            href="#",
            color="secondary",
            className="me-1 text-decoration-none",
        ),
        dbc.Badge(
            "Success",
            href="#",
            color="success",
            className="me-1 text-decoration-none",
        ),
        dbc.Badge(
            "Warning",
            href="#",
            color="warning",
            className="me-1 text-decoration-none",
        ),
        dbc.Badge(
            "Danger",
            href="#",
            color="danger",
            className="me-1 text-decoration-none",
        ),
        dbc.Badge(
            "Info",
            href="#",
            color="info",
            className="me-1 text-decoration-none",
        ),
        dbc.Badge(
            "Light",
            href="#",
            color="light",
            text_color="dark",
            className="me-1 text-decoration-none",
        ),
        dbc.Badge("Dark", href="#", color="dark", className="text-decoration-none"),
    ]
)
