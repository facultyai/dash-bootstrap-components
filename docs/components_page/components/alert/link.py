import dash_bootstrap_components as dbc
from dash import html

alerts = html.Div(
    [
        dbc.Alert(
            [
                "This is a primary alert with an ",
                html.A("example link", href="#", className="alert-link"),
            ],
            color="primary",
        ),
        dbc.Alert(
            [
                "This is a danger alert with an ",
                html.A("example link", href="#", className="alert-link"),
            ],
            color="danger",
        ),
    ]
)
