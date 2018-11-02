import dash_bootstrap_components as dbc
import dash_html_components as html

cards = html.Div(
    [
        html.H4("Card group"),
        dbc.CardGroup(
            [
                dbc.Card(
                    [
                        dbc.CardHeader("These cards are in a card group"),
                        dbc.CardBody(
                            [
                                dbc.CardTitle("This is a title"),
                                dbc.CardText("And some text")
                            ]
                        ),
                    ]
                ),
                dbc.Card(
                    [
                        dbc.CardHeader("Another card"),
                        dbc.CardBody(
                            [
                                dbc.CardTitle("This is a title"),
                                dbc.CardText("And some text")
                            ],
                        ),
                    ],
                    color="dark",
                    inverse=True
                )
            ]
        )
    ]
)
