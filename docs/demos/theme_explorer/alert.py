import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

alerts1 = dbc.Col(
    [
        dbc.Alert("This is a primary alert", color="primary"),
        dbc.Alert("This is a secondary alert", color="secondary"),
        dbc.Alert("This is a success alert! Well done!", color="success"),
        dbc.Alert("This is a warning alert... be careful...", color="warning"),
    ],
    md=6,
    xs=12,
)

alerts2 = dbc.Col(
    [
        dbc.Alert("This is a danger alert. Scary!", color="danger"),
        dbc.Alert("This is an info alert. Good to know!", color="info"),
        dbc.Alert("This is a light alert", color="light"),
        dbc.Alert("This is a dark alert", color="dark"),
    ],
    md=6,
    xs=12,
)

alerts = html.Div(
    [make_subheading("Alert", "alert"), dbc.Row([alerts1, alerts2])],
    className="mb-4",
)
