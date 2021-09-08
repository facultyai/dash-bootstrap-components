import dash_bootstrap_components as dbc
from dash import html

badges = html.Span(
    [
        dbc.Badge(
            "Primary",
            color="white",
            text_color="primary",
            class_name="border me-1",
        ),
        dbc.Badge(
            "Secondary",
            color="white",
            text_color="secondary",
            class_name="border me-1",
        ),
        dbc.Badge(
            "Success",
            color="white",
            text_color="success",
            class_name="border me-1",
        ),
        dbc.Badge(
            "Warning",
            color="white",
            text_color="warning",
            class_name="border me-1",
        ),
        dbc.Badge(
            "Danger",
            color="white",
            text_color="danger",
            class_name="border me-1",
        ),
        dbc.Badge(
            "Info", color="white", text_color="info", class_name="border me-1"
        ),
        dbc.Badge(
            "Dark", color="white", text_color="dark", class_name="border me-1"
        ),
        dbc.Badge(
            "Black",
            color="white",
            text_color="black",
            class_name="border me-1",
        ),
        dbc.Badge(
            "Muted",
            color="white",
            text_color="muted",
            class_name="border me-1",
        ),
        dbc.Badge(
            "Light",
            color="secondary",
            text_color="light",
            class_name="border me-1",
        ),
        dbc.Badge(
            "White", color="secondary", text_color="white", class_name="border"
        ),
    ]
)
