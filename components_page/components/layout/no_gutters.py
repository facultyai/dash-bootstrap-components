import dash_bootstrap_components as dbc
import dash_html_components as html

row = html.Div(
    [
        html.H4("Row without 'gutters'"),
        dbc.Row(
            [
                dbc.Col(html.Div("One of three columns")),
                dbc.Col(html.Div("One of three columns")),
                dbc.Col(html.Div("One of three columns")),
            ],
            noGutters=True,
        ),
    ]
)
