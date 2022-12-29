import time

import dash_bootstrap_components as dbc
from dash import Input, Output, html

loading_spinner = html.Div(
    [
        dbc.Button("Load", id="loading-button", n_clicks=0),
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
