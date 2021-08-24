import dash_bootstrap_components as dbc
import dash_html_components as html

inputs = html.Div(
    [
        dbc.Input(
            placeholder="A large input...", size="lg", class_name="mb-3"
        ),
        dbc.Input(
            placeholder="A medium input...", size="md", class_name="mb-3"
        ),
        dbc.Input(placeholder="A small input...", size="sm"),
    ]
)
