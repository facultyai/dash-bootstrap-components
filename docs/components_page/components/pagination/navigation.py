import dash_bootstrap_components as dbc
from dash import html

pagination = html.Div(
    [
        dbc.Pagination(max_value=5, first_last=True),
        dbc.Pagination(max_value=5, previous_next=True),
        dbc.Pagination(max_value=5, first_last=True, previous_next=True),
    ]
)
