import dash_bootstrap_components as dbc

cards = dbc.CardDeck(
    [
        dbc.Card(
            [
                dbc.CardHeader("Header"),
                dbc.CardBody(
                    [
                        dbc.CardTitle("This card has a title"),
                        dbc.CardText("And some text"),
                    ]
                ),
            ]
        ),
        dbc.Card(
            [
                dbc.CardBody(
                    [
                        dbc.CardTitle("This card has a title"),
                        dbc.CardText("and some text, but no header"),
                    ]
                )
            ],
            outline=True,
            color="primary",
        ),
        dbc.Card(
            [
                dbc.CardBody(
                    [
                        dbc.CardTitle("This card has a title"),
                        dbc.CardText("and some text, and a footer!"),
                    ]
                ),
                dbc.CardFooter("Footer"),
            ],
            outline=True,
            color="dark",
        ),
    ]
)
