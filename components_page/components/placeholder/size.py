import dash_bootstrap_components as dbc
from dash import html

placeholder = html.Div(
    [
        dbc.Placeholder(size="xs", className="me-1 mt-1 w-100"),
        dbc.Placeholder(size="sm", className="me-1 mt-1 w-100"),
        dbc.Placeholder(className="me-1 mt-1 w-100"),
        dbc.Placeholder(size="lg", className="me-1 mt-1 w-100"),
    ]
)
