import dash_bootstrap_components as dbc
import dash_html_components as html

card_content_1 = [
    dbc.CardHeader("Card header"),
    dbc.CardBody(
        [
            html.H5("Card title", className="card-title"),
            html.P(
                "This is some card content that we'll reuse",
                className="card-text",
            ),
        ]
    ),
]

card_content_2 = dbc.CardBody(
    [
        html.Blockquote(
            [
                html.P(
                    "A learning experience is one of those things that says, "
                    "'You know that thing you just did? Don't do that.'"
                ),
                html.Footer(
                    html.Small("Douglas Adams", className="text-muted")
                ),
            ],
            className="blockquote",
        )
    ]
)

card_content_3 = [
    dbc.CardImg(src="/assets/images/placeholder286x180.png", top=True),
    dbc.CardBody(
        [
            html.H5("Card with image", className="card-title"),
            html.P(
                "This card has an image on top, and a button below",
                className="card-text",
            ),
            dbc.Button("Click me!", color="primary"),
        ]
    ),
]


cards = dbc.CardColumns(
    [
        dbc.Card(card_content_1, color="primary", inverse=True),
        dbc.Card(card_content_2, body=True),
        dbc.Card(card_content_1, color="secondary", inverse=True),
        dbc.Card(card_content_3, color="info", inverse=True),
        dbc.Card(card_content_1, color="success", inverse=True),
        dbc.Card(card_content_1, color="warning", inverse=True),
        dbc.Card(card_content_1, color="danger", inverse=True),
        dbc.Card(card_content_3, color="light"),
        dbc.Card(card_content_1, color="dark", inverse=True),
    ]
)
