import dash_bootstrap_components as dbc
from dash import html

pagination = html.Div(
    [
        html.Div("Collapse long pagination objects using ellipsis"),
        dbc.Pagination(max_value=10, fully_expanded=False),
        html.Div("If space won't be saved, it won't be collapsed"),
        dbc.Pagination(max_value=5, fully_expanded=False),
    ]
)
