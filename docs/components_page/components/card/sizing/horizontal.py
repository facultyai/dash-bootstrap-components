import dash_bootstrap_components as dbc
from dash import html

card = dbc.Card(
    [
        dbc.Row(
            [
                dbc.Col(
                    dbc.CardImg(
                        src="/static/images/placeholder286x180.png",
                        class_name="img-fluid rounded-start",
                    ),
                    class_name="col-md-4",
                ),
                dbc.Col(
                    dbc.CardBody(
                        [
                            html.H4("Card title", class_name="card-title"),
                            html.P(
                                "This is a wider card with supporting text "
                                "below as a natural lead-in to additional "
                                "content. This content is a bit longer.",
                                class_name="card-text",
                            ),
                            html.Small(
                                "Last updated 3 mins ago",
                                class_name="card-text text-muted",
                            ),
                        ]
                    ),
                    class_name="col-md-8",
                ),
            ],
            class_name="g-0 d-flex align-items-center",
        )
    ],
    class_name="mb-3",
    style={"maxWidth": "540px"},
)
