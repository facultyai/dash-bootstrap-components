import dash_bootstrap_components as dbc
import dash_html_components as html

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
