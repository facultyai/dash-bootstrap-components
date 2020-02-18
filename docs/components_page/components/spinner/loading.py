import time

import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

loading_spinner = html.Div(
    [
        dbc.Button("Load", id="loading-button"),
        dbc.Spinner(html.Div(id="loading-output")),
    ]
)


@app.callback(
    Output("loading-output", "children"), [Input("loading-button", "n_clicks")]
)
def load_output(n):
    if n:
        time.sleep(1)
        return f"Output loaded {n} times"
    return "Output not reloaded yet"
