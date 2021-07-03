import dash_bootstrap_components as dbc
import dash_html_components as html

cards = dbc.CardGroup(
    [
        dbc.Card(
            dbc.CardBody(
                [
                    html.H5("Card 1", class_name="card-title"),
                    html.P(
                        "This card has some text content, which is a little "
                        "bit longer than the second card.",
                        class_name="card-text",
                    ),
                    dbc.Button(
                        "Click here", color="success", class_name="mt-auto"
                    ),
                ]
            )
        ),
        dbc.Card(
            dbc.CardBody(
                [
                    html.H5("Card 2", class_name="card-title"),
                    html.P(
                        "This card has some text content.",
                        class_name="card-text",
                    ),
                    dbc.Button(
                        "Click here", color="warning", class_name="mt-auto"
                    ),
                ]
            )
        ),
        dbc.Card(
            dbc.CardBody(
                [
                    html.H5("Card 3", class_name="card-title"),
                    html.P(
                        "This card has some text content, which is longer "
                        "than both of the other two cards, in order to "
                        "demonstrate the equal height property of cards in a "
                        "card group.",
                        class_name="card-text",
                    ),
                    dbc.Button(
                        "Click here", color="danger", class_name="mt-auto"
                    ),
                ]
            )
        ),
    ]
)
