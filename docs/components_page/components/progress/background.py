import dash_bootstrap_components as dbc
import dash_html_components as html

progress = html.Div(
    [
        dbc.Progress(value=25, color="success", className="mb-3"),
        dbc.Progress(value=50, color="warning", className="mb-3"),
        dbc.Progress(value=75, color="danger", className="mb-3"),
        dbc.Progress(value=100, color="info"),
    ]
)
