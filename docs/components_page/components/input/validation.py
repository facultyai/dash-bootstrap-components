import dash_bootstrap_components as dbc
from dash import html

inputs = html.Div(
    [
        dbc.Input(placeholder="Valid input...", valid=True, class_name="mb-3"),
        dbc.Input(placeholder="Invalid input...", invalid=True),
    ]
)
