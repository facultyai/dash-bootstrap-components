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

row_1 = dbc.Row(
    [
        dbc.Col(dbc.Card(card_content, color="primary", outline=True)),
        dbc.Col(dbc.Card(card_content, color="secondary", outline=True)),
        dbc.Col(dbc.Card(card_content, color="info", outline=True)),
    ],
    class_name="mb-4",
)

row_2 = dbc.Row(
    [
        dbc.Col(dbc.Card(card_content, color="success", outline=True)),
        dbc.Col(dbc.Card(card_content, color="warning", outline=True)),
        dbc.Col(dbc.Card(card_content, color="danger", outline=True)),
    ],
    class_name="mb-4",
)

row_3 = dbc.Row(
    [
        dbc.Col(dbc.Card(card_content, color="light", outline=True)),
        dbc.Col(dbc.Card(card_content, color="dark", outline=True)),
    ]
)

cards = html.Div([row_1, row_2, row_3])
