import dash_bootstrap_components as dbc
import dash_html_components as html

cards = html.Div(
    [
        html.H4("Card columns"),
        dbc.CardColumns(
            [
                dbc.Card(
                    [
                        dbc.CardHeader("These cards are arranged in columns"),
                        dbc.CardBody(
                            [
                                dbc.CardTitle("This is a title"),
                                dbc.CardText("And some text\nmore text\nmore text")
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
                ),
                dbc.Card(
                    [
                        dbc.CardHeader("Yet another card"),
                        dbc.CardBody(
                            [
                                dbc.CardTitle("This is a title"),
                                dbc.CardText("And some text")
                            ]
                        ),
                    ],
                    color="primary",
                    inverse=True
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
                    color="primary",
                    outline=True
                )
            ]
        )
    ]
)
