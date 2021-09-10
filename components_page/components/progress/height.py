import dash_bootstrap_components as dbc
from dash import html

progress = html.Div(
    [
        dbc.Progress(value=50, style={"height": "1px"}, className="mb-3"),
        dbc.Progress(value=50, style={"height": "30px"}),
    ]
)
