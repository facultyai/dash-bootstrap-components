import dash_bootstrap_components as dbc
import dash_html_components as html

inputs = html.Div(
    [
        dbc.Input(placeholder="Valid input...", valid=True, className="mb-3"),
        dbc.Input(placeholder="Invalid input...", invalid=True),
    ]
)
