import dash_bootstrap_components as dbc
import dash_html_components as html

row = html.Div(
    [
        html.H4("Specify width"),
        dbc.Row(dbc.Col(html.Div("A single, half-width column"), width=6)),
        dbc.Row(
            [
                dbc.Col(html.Div("One of three columns"), width=3),
                dbc.Col(html.Div("One of three columns")),
                dbc.Col(html.Div("One of three columns"), width=3),
            ]
        ),
    ]
)
