import dash_bootstrap_components as dbc
import dash_html_components as html

from .util import make_subheading

badge = html.Div(
    [
        dbc.Badge("Primary", color="primary", className="mr-1"),
        dbc.Badge("Secondary", color="secondary", className="mr-1"),
        dbc.Badge("Success", color="success", className="mr-1"),
        dbc.Badge("Warning", color="warning", className="mr-1"),
        dbc.Badge("Danger", color="danger", className="mr-1"),
        dbc.Badge("Info", color="info", className="mr-1"),
        dbc.Badge("Light", color="light", className="mr-1"),
        dbc.Badge("Dark", color="dark"),
    ],
    className="mb-2",
)

badge_pills = html.Div(
    [
        dbc.Badge("Primary", color="primary", className="mr-1", pill=True),
        dbc.Badge("Secondary", color="secondary", className="mr-1", pill=True),
        dbc.Badge("Success", color="success", className="mr-1", pill=True),
        dbc.Badge("Warning", color="warning", className="mr-1", pill=True),
        dbc.Badge("Danger", color="danger", className="mr-1", pill=True),
        dbc.Badge("Info", color="info", className="mr-1", pill=True),
        dbc.Badge("Light", color="light", className="mr-1", pill=True),
        dbc.Badge("Dark", color="dark", pill=True),
    ],
)

badges = html.Div(
    [make_subheading("Badge", "badge"), badge, badge_pills],
    className="mb-4",
)
