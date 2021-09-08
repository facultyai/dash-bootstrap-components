import dash_bootstrap_components as dbc
from dash import html

pagination = html.Div(
    dbc.Pagination(max_value=10),
)
