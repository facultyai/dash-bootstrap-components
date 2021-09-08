import dash_bootstrap_components as dbc
from dash import html

card_content = [
    dbc.CardHeader("Card header"),
    dbc.CardBody(
        [
            html.H5("Card title", class_name="card-title"),
            html.P(
                "This is some card content that we'll reuse",
                class_name="card-text",
            ),
        ]
    ),
]

cards = html.Div(
    [
        dbc.Row(
            [
                dbc.Col(dbc.Card(card_content, color="primary", inverse=True)),
                dbc.Col(
                    dbc.Card(card_content, color="secondary", inverse=True)
                ),
                dbc.Col(dbc.Card(card_content, color="info", inverse=True)),
            ],
            class_name="mb-4",
        ),
        dbc.Row(
            [
                dbc.Col(dbc.Card(card_content, color="success", inverse=True)),
                dbc.Col(dbc.Card(card_content, color="warning", inverse=True)),
                dbc.Col(dbc.Card(card_content, color="danger", inverse=True)),
            ],
            class_name="mb-4",
        ),
        dbc.Row(
            [
                dbc.Col(dbc.Card(card_content, color="light")),
                dbc.Col(dbc.Card(card_content, color="dark", inverse=True)),
            ]
        ),
    ]
)
