import dash_bootstrap_components as dbc
import dash_html_components as html

row = html.Div(
    [
        html.H2("Row with columns"),
        dbc.Row(dbc.Col(html.Div("A single column"))),
        dbc.Row(
            [
                dbc.Col(html.Div("One of three columns")),
                dbc.Col(html.Div("One of three columns")),
                dbc.Col(html.Div("One of three columns")),
            ]
        ),
    ]
)
