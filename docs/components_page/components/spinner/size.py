import dash_bootstrap_components as dbc
from dash import html

spinners = html.Div(
    [
        dbc.Spinner(size="sm"),
        html.Hr(),
        dbc.Spinner(spinner_style={"width": "3rem", "height": "3rem"}),
    ]
)
