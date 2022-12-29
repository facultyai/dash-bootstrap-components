import dash_bootstrap_components as dbc
from dash import html

cards = dbc.Card(
    dbc.CardBody(
        [
            html.H5("Custom CSS", className="card-title"),
            html.P(
                "This card has inline styles applied controlling the width. "
                "You could also apply the same styles with a custom CSS class."
            ),
        ]
    ),
    style={"width": "18rem"},
)
