import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

placeholders1 = dbc.Col(
    [
        make_subheading("Placeholder", "placeholder"),
        dbc.Placeholder(className="me-1 mt-1 w-100 mb-2"),
        html.Div(
            [
                dbc.Placeholder(animation="wave", className="me-1 mt-1 w-100"),
                dbc.Placeholder(animation="glow", className="me-1 mt-1 w-100"),
            ],
            className="mb-2",
        ),
        html.Div(
            [
                dbc.Placeholder(color="primary", className="me-1 mt-1 w-100"),
                dbc.Placeholder(color="secondary", className="me-1 mt-1 w-100"),
                dbc.Placeholder(color="success", className="me-1 mt-1 w-100"),
                dbc.Placeholder(color="warning", className="me-1 mt-1 w-100"),
                dbc.Placeholder(color="danger", className="me-1 mt-1 w-100"),
                dbc.Placeholder(color="info", className="me-1 mt-1 w-100"),
                dbc.Placeholder(color="light", className="me-1 mt-1 w-100"),
                dbc.Placeholder(color="dark", className="me-1 mt-1 w-100"),
            ],
            className="mb-2",
        ),
        html.Div(
            [
                dbc.Placeholder(size="xs", className="me-1 mt-1 w-100"),
                dbc.Placeholder(size="sm", className="me-1 mt-1 w-100"),
                dbc.Placeholder(className="me-1 mt-1 w-100"),
                dbc.Placeholder(size="lg", className="me-1 mt-1 w-100"),
            ],
            className="mb-2",
        ),
    ],
    lg=6,
    xs=12,
)

placeholders2 = dbc.Col(
    [
        dbc.Placeholder(button=True, className="me-1 mt-1 w-100 mb-2"),
        html.Div(
            [
                dbc.Placeholder(
                    animation="wave", button=True, className="me-1 mt-1 w-100"
                ),
                dbc.Placeholder(
                    animation="glow", button=True, className="me-1 mt-1 w-100"
                ),
            ],
            className="mb-2",
        ),
        html.Div(
            [
                dbc.Placeholder(
                    color="primary", button=True, className="me-1 mt-1 w-100"
                ),
                dbc.Placeholder(
                    color="secondary", button=True, className="me-1 mt-1 w-100"
                ),
                dbc.Placeholder(
                    color="success", button=True, className="me-1 mt-1 w-100"
                ),
                dbc.Placeholder(
                    color="warning", button=True, className="me-1 mt-1 w-100"
                ),
                dbc.Placeholder(
                    color="danger", button=True, className="me-1 mt-1 w-100"
                ),
                dbc.Placeholder(color="info", button=True, className="me-1 mt-1 w-100"),
                dbc.Placeholder(
                    color="light", button=True, className="me-1 mt-1 w-100"
                ),
                dbc.Placeholder(color="dark", button=True, className="me-1 mt-1 w-100"),
            ],
            className="mb-2",
        ),
    ],
    lg=6,
    xs=12,
)

placeholder = dbc.Row([placeholders1, placeholders2], className="mb-4")
