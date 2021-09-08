import dash_bootstrap_components as dbc
from dash import html

spinners = html.Div(
    [
        dbc.Button(
            dbc.Spinner(size="sm"),
            color="primary",
            disabled=True,
            class_name="me-1",
        ),
        dbc.Button(
            [dbc.Spinner(size="sm"), " Loading..."],
            color="primary",
            disabled=True,
        ),
    ]
)
