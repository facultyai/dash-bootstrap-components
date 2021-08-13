import dash_bootstrap_components as dbc
import dash_html_components as html

card = dbc.Card(
    [
        dbc.CardHeader("This is the header"),
        dbc.CardBody(
            [
                html.H4("Card title", class_name="card-title"),
                html.P("This is some card text", class_name="card-text"),
            ]
        ),
        dbc.CardFooter("This is the footer"),
    ],
    style={"width": "18rem"},
)
