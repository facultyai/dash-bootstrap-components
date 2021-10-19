import dash_bootstrap_components as dbc
from dash import html

button_groups = html.Div(
    [
        dbc.ButtonGroup(
            [dbc.Button("Left"), dbc.Button("Middle"), dbc.Button("Right")],
            size="lg",
            className="me-1",
        ),
        dbc.ButtonGroup(
            [dbc.Button("Left"), dbc.Button("Middle"), dbc.Button("Right")],
            size="md",
            className="me-1",
        ),
        dbc.ButtonGroup(
            [dbc.Button("Left"), dbc.Button("Middle"), dbc.Button("Right")],
            size="sm",
        ),
    ]
)
