import dash_bootstrap_components as dbc
import dash_html_components as html

button = html.Div(
    [
        dbc.Button("Block button", color="primary"),
        dbc.Button("Block button", color="secondary"),
    ],
    class_name="d-grid gap-2 d-md-block",
)
