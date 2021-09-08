import dash_bootstrap_components as dbc
from dash import html

card = dbc.Card(
    dbc.CardBody(
        [
            html.H4("Title", class_name="card-title"),
            html.H6("Card subtitle", class_name="card-subtitle"),
            html.P(
                "Some quick example text to build on the card title and make "
                "up the bulk of the card's content.",
                class_name="card-text",
            ),
            dbc.CardLink("Card link", href="#"),
            dbc.CardLink("External link", href="https://google.com"),
        ]
    ),
    style={"width": "18rem"},
)
