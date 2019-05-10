import dash_bootstrap_components as dbc
import dash_html_components as html

cards = dbc.CardDeck(
    [
        dbc.Card(
            dbc.CardBody(
                [
                    html.H5("Card 1", className="card-title"),
                    html.P(
                        "This card has some text content, which is a little "
                        "bit longer than the second card.",
                        className="card-text",
                    ),
                    dbc.Button(
                        "Click here", color="success", className="mt-auto"
                    ),
                ]
            )
        ),
        dbc.Card(
            dbc.CardBody(
                [
                    html.H5("Card 2", className="card-title"),
                    html.P(
                        "This card has some text content.",
                        className="card-text",
                    ),
                    dbc.Button(
                        "Click here", color="warning", className="mt-auto"
                    ),
                ]
            )
        ),
        dbc.Card(
            dbc.CardBody(
                [
                    html.H5("Card 3", className="card-title"),
                    html.P(
                        "This card has some text content, which is longer "
                        "than both of the other two cards, in order to "
                        "demonstrate the equal height property of cards in a "
                        "card group.",
                        className="card-text",
                    ),
                    dbc.Button(
                        "Click here", color="danger", className="mt-auto"
                    ),
                ]
            )
        ),
    ]
)
