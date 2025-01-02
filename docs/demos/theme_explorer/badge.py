import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

badge = html.Div(
    [
        dbc.Badge("Primary", color="primary", className="me-1"),
        dbc.Badge("Secondary", color="secondary", className="me-1"),
        dbc.Badge("Success", color="success", className="me-1"),
        dbc.Badge("Warning", color="warning", className="me-1"),
        dbc.Badge("Danger", color="danger", className="me-1"),
        dbc.Badge("Info", color="info", className="me-1"),
        dbc.Badge("Light", color="light", className="me-1"),
        dbc.Badge("Dark", color="dark"),
    ],
    className="mb-2",
)

badge_pills = html.Div(
    [
        dbc.Badge("Primary", color="primary", className="me-1", pill=True),
        dbc.Badge("Secondary", color="secondary", className="me-1", pill=True),
        dbc.Badge("Success", color="success", className="me-1", pill=True),
        dbc.Badge("Warning", color="warning", className="me-1", pill=True),
        dbc.Badge("Danger", color="danger", className="me-1", pill=True),
        dbc.Badge("Info", color="info", className="me-1", pill=True),
        dbc.Badge("Light", color="light", className="me-1", pill=True),
        dbc.Badge("Dark", color="dark", pill=True),
    ],
    className="mb-2",
)

badge_text = html.Div(
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
    ],
    className="mb-2",
)

badge_sizes = html.Div(
    [
        html.H1(["Example heading", dbc.Badge("New", className="ms-1")]),
        html.H2(["Example heading", dbc.Badge("New", className="ms-1")]),
        html.H3(["Example heading", dbc.Badge("New", className="ms-1")]),
        html.H4(["Example heading", dbc.Badge("New", className="ms-1")]),
        html.H5(["Example heading", dbc.Badge("New", className="ms-1")]),
        html.H6(["Example heading", dbc.Badge("New", className="ms-1")]),
    ]
)

badges = html.Div(
    [
        make_subheading("Badge", "badge"),
        badge,
        badge_pills,
        badge_text,
        badge_sizes,
    ],
    className="mb-4",
)
