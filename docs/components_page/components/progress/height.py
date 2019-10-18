import dash_bootstrap_components as dbc
import dash_html_components as html

progress = html.Div(
    [
        dbc.Progress(value=50, style={"height": "1px"}, className="mb-3"),
        dbc.Progress(value=50, style={"height": "30px"}),
    ]
)
