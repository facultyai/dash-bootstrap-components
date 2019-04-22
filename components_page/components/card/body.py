import dash_bootstrap_components as dbc
import dash_html_components as html

cards = html.Div(
    [
        dbc.Card(
            dbc.CardBody("This is some text within a card body"),
            className="mb-3",
        ),
        dbc.Card("This is also within a body", body=True),
    ]
)
