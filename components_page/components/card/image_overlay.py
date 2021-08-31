import dash_bootstrap_components as dbc
import dash_html_components as html

card = dbc.Card(
    [
        dbc.CardImg(src="/static/images/placeholder286x180.png", top=True),
        dbc.CardImgOverlay(
            dbc.CardBody(
                [
                    html.H4("Card title", class_name="card-title"),
                    html.P(
                        "An example of using an image in the background of "
                        "a card.",
                        class_name="card-text",
                    ),
                    dbc.Button("Go somewhere", color="primary"),
                ],
            ),
        ),
    ],
    style={"width": "18rem"},
)
