import dash_bootstrap_components as dbc
from dash import html

spinners = html.Div(
    [
        dbc.Spinner(color="primary"),
        dbc.Spinner(color="secondary"),
        dbc.Spinner(color="success"),
        dbc.Spinner(color="warning"),
        dbc.Spinner(color="danger"),
        dbc.Spinner(color="info"),
        dbc.Spinner(color="light"),
        dbc.Spinner(color="dark"),
    ]
)
