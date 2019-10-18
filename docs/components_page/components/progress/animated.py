import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

progress = html.Div(
    [
        dbc.Progress(value=80, id="animated-progress", striped=True),
        dbc.Button(
            "Toggle animation", id="animation-toggle", className="mt-3"
        ),
    ]
)


@app.callback(
    Output("animated-progress", "animated"),
    [Input("animation-toggle", "n_clicks")],
    [State("animated-progress", "animated")],
)
def toggle_animation(n, animated):
    if n:
        return not animated
    return animated
