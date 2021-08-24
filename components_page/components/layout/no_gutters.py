import dash_bootstrap_components as dbc
import dash_html_components as html

row = dbc.Row(
    [
        dbc.Col(html.Div("One of three columns")),
        dbc.Col(html.Div("One of three columns")),
        dbc.Col(html.Div("One of three columns")),
    ],
    class_name="g-0",
)
