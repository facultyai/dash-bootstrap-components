import dash_bootstrap_components as dbc
from dash import html

inputs = html.Div(
    [
        dbc.Input(
            placeholder="A large input...", size="lg", class_name="mb-3"
        ),
        dbc.Input(
            placeholder="A medium input...", size="md", class_name="mb-3"
        ),
        dbc.Input(placeholder="A small input...", size="sm"),
    ]
)
