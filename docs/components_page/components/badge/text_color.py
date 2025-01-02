import dash_bootstrap_components as dbc
from dash import html

badges = html.Span(
    [
        dbc.Badge(
            "Primary",
            color="white",
            text_color="primary",
            className="border me-1",
        ),
        dbc.Badge(
            "Secondary",
            color="white",
            text_color="secondary",
            className="border me-1",
        ),
        dbc.Badge(
            "Success",
            color="white",
            text_color="success",
            className="border me-1",
        ),
        dbc.Badge(
            "Warning",
            color="white",
            text_color="warning",
            className="border me-1",
        ),
        dbc.Badge(
            "Danger",
            color="white",
            text_color="danger",
            className="border me-1",
        ),
        dbc.Badge("Info", color="white", text_color="info", className="border me-1"),
        dbc.Badge("Dark", color="white", text_color="dark", className="border me-1"),
        dbc.Badge(
            "Black",
            color="white",
            text_color="black",
            className="border me-1",
        ),
        dbc.Badge(
            "Muted",
            color="white",
            text_color="muted",
            className="border me-1",
        ),
        dbc.Badge(
            "Light",
            color="secondary",
            text_color="light",
            className="border me-1",
        ),
        dbc.Badge("White", color="secondary", text_color="white", className="border"),
    ]
)
