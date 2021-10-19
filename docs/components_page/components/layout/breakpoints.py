import dash_bootstrap_components as dbc
from dash import html

row = html.Div(
    [
        dbc.Row(
            [
                dbc.Col(html.Div("One of three columns"), md=4),
                dbc.Col(html.Div("One of three columns"), md=4),
                dbc.Col(html.Div("One of three columns"), md=4),
            ]
        ),
        dbc.Row(
            [
                dbc.Col(html.Div("One of four columns"), width=6, lg=3),
                dbc.Col(html.Div("One of four columns"), width=6, lg=3),
                dbc.Col(html.Div("One of four columns"), width=6, lg=3),
                dbc.Col(html.Div("One of four columns"), width=6, lg=3),
            ]
        ),
    ]
)
