import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

badge = html.Div(
    [
        dbc.Badge("Primary", color="primary", class_name="me-1"),
        dbc.Badge("Secondary", color="secondary", class_name="me-1"),
        dbc.Badge("Success", color="success", class_name="me-1"),
        dbc.Badge("Warning", color="warning", class_name="me-1"),
        dbc.Badge("Danger", color="danger", class_name="me-1"),
        dbc.Badge("Info", color="info", class_name="me-1"),
        dbc.Badge("Light", color="light", class_name="me-1"),
        dbc.Badge("Dark", color="dark"),
    ],
    class_name="mb-2",
)

badge_pills = html.Div(
    [
        dbc.Badge("Primary", color="primary", class_name="me-1", pill=True),
        dbc.Badge(
            "Secondary", color="secondary", class_name="me-1", pill=True
        ),
        dbc.Badge("Success", color="success", class_name="me-1", pill=True),
        dbc.Badge("Warning", color="warning", class_name="me-1", pill=True),
        dbc.Badge("Danger", color="danger", class_name="me-1", pill=True),
        dbc.Badge("Info", color="info", class_name="me-1", pill=True),
        dbc.Badge("Light", color="light", class_name="me-1", pill=True),
        dbc.Badge("Dark", color="dark", pill=True),
    ],
)

badges = html.Div(
    [make_subheading("Badge", "badge"), badge, badge_pills],
    class_name="mb-4",
)
