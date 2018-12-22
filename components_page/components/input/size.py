import dash_bootstrap_components as dbc
import dash_html_components as html

inputs = html.Div(
    [
        dbc.Input(
            placeholder="A large input...", bs_size="lg", className="mb-3"
        ),
        dbc.Input(
            placeholder="A medium input...", bs_size="md", className="mb-3"
        ),
        dbc.Input(placeholder="A small input...", bs_size="sm"),
    ]
)
