import dash_bootstrap_components as dbc
from dash import html

placeholder = html.Div(
    [
        dbc.Placeholder(color="primary", className="me-1 mt-1 w-100"),
        dbc.Placeholder(color="secondary", className="me-1 mt-1 w-100"),
        dbc.Placeholder(color="success", className="me-1 mt-1 w-100"),
        dbc.Placeholder(color="warning", className="me-1 mt-1 w-100"),
        dbc.Placeholder(color="danger", className="me-1 mt-1 w-100"),
        dbc.Placeholder(color="info", className="me-1 mt-1 w-100"),
        dbc.Placeholder(color="light", className="me-1 mt-1 w-100"),
        dbc.Placeholder(color="dark", className="me-1 mt-1 w-100"),
    ]
)
