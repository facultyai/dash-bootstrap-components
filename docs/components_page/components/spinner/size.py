import dash_bootstrap_components as dbc
import dash_html_components as html

spinners = html.Div(
    [
        dbc.Spinner(size="sm"),
        html.Hr(),
        dbc.Spinner(style={"width": "3rem", "height": "3rem"}),
    ]
)
