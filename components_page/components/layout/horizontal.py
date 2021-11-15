import dash_bootstrap_components as dbc
from dash import html

row_content = [
    dbc.Col(html.Div("One of two columns"), width=4),
    dbc.Col(html.Div("One of two columns"), width=4),
]

row = html.Div(
    [
        dbc.Row(
            row_content,
            justify="start",
        ),
        dbc.Row(
            row_content,
            justify="center",
        ),
        dbc.Row(
            row_content,
            justify="end",
        ),
        dbc.Row(
            row_content,
            justify="between",
        ),
        dbc.Row(
            row_content,
            justify="around",
        ),
        dbc.Row(
            row_content,
            justify="evenly",
        ),
    ]
)
