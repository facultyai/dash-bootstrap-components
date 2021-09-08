import dash_bootstrap_components as dbc
from dash import html

pagination = html.Div(
    [
        html.Div("Small"),
        dbc.Pagination(max_value=5, size="sm"),
        html.Div("Default"),
        dbc.Pagination(max_value=5),
        html.Div("Large"),
        dbc.Pagination(max_value=5, size="lg"),
    ]
)
