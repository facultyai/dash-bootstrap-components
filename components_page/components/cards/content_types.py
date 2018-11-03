import dash_bootstrap_components as dbc
import dash_html_components as html

cards = html.Div(
    [
        html.H4("Card content types"),
        dbc.Card(
            [
                dbc.CardBody(
                    [
                        dbc.CardTitle("Card title"),
                        dbc.CardSubtitle("Card subtitle"),
                    ]
                ),
                dbc.CardImg(
                    src=(
                        "https://placeholdit.imgix.net/~text?"
                        "txtsize=33&txt=318%C3%97180&w=318&h=180"
                    )
                ),
                dbc.CardBody(
                    [
                        dbc.CardText(
                            "Some quick example text to build on the "
                            "card title and make up the bulk of the "
                            "card's content."
                        ),
                        dbc.CardLink("A link", href="#"),
                        dbc.CardLink("Another link", href="#"),
                    ]
                ),
            ],
            style={"max-width": "320px"},
        ),
    ]
)
