import dash_bootstrap_components as dbc
from dash import html

inputs = html.Div(
    [
        dbc.Input(placeholder="A large input...", size="lg", className="mb-3"),
        dbc.Input(
            placeholder="A medium input...", size="md", className="mb-3"
        ),
        dbc.Input(placeholder="A small input...", size="sm"),
    ]
)
