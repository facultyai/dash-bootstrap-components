import dash_bootstrap_components as dbc
from dash import html

row = html.Div(
    [
        dbc.Row(
            [
                dbc.Col(html.Div("One of two columns"), width=4),
                dbc.Col(html.Div("One of two columns"), width=4),
            ],
            justify="start",
        ),
        dbc.Row(
            [
                dbc.Col(html.Div("One of two columns"), width=4),
                dbc.Col(html.Div("One of two columns"), width=4),
            ],
            justify="center",
        ),
        dbc.Row(
            [
                dbc.Col(html.Div("One of two columns"), width=4),
                dbc.Col(html.Div("One of two columns"), width=4),
            ],
            justify="end",
        ),
        dbc.Row(
            [
                dbc.Col(html.Div("One of two columns"), width=4),
                dbc.Col(html.Div("One of two columns"), width=4),
            ],
            justify="between",
        ),
        dbc.Row(
            [
                dbc.Col(html.Div("One of two columns"), width=4),
                dbc.Col(html.Div("One of two columns"), width=4),
            ],
            justify="around",
        ),
    ]
)
