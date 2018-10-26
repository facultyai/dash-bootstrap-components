import dash_bootstrap_components as dbc
import dash_html_components as html

row = html.Div(
    [
        html.H4("Specify width for different screen sizes"),
        dbc.Row(
            [
                dbc.Col(html.Div("One of three columns"), md=4),
                dbc.Col(html.Div("One of three columns"), md=4),
                dbc.Col(html.Div("One of three columns"), md=4),
            ]
        ),
        dbc.Row([
            dbc.Col(html.Div("One of four columns"), width=6, lg=3),
            dbc.Col(html.Div("One of four columns"), width=6, lg=3),
            dbc.Col(html.Div("One of four columns"), width=6, lg=3),
            dbc.Col(html.Div("One of four columns"), width=6, lg=3),
        ])
    ]
)
