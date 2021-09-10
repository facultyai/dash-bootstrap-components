import dash_bootstrap_components as dbc
from dash import html

cards = html.Div(
    [
        dbc.Card(
            dbc.CardBody("This is some text within a card body"),
            className="mb-3",
        ),
        dbc.Card("This is also within a body", body=True),
    ]
)
