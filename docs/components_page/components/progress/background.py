import dash_bootstrap_components as dbc
from dash import html

progress = html.Div(
    [
        dbc.Progress(value=25, color="success", class_name="mb-3"),
        dbc.Progress(value=50, color="warning", class_name="mb-3"),
        dbc.Progress(value=75, color="danger", class_name="mb-3"),
        dbc.Progress(value=100, color="info"),
    ]
)
