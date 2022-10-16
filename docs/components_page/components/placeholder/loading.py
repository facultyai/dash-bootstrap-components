import time

import dash_bootstrap_components as dbc
from dash import Input, Output, html

placeholder = html.Div(
    [
        dbc.Button("Load", id="loading-placeholder-button", n_clicks=0),
        dbc.Placeholder(
            html.Div(id="loading-placeholder-output"),
            className="w-100",
            animation="wave",
        ),
    ],
)


@app.callback(
    Output("loading-placeholder-output", "children"),
    [Input("loading-placeholder-button", "n_clicks")],
)
def load_output(n):
    if n:
        time.sleep(2)
        return f"Output loaded {n} times"
    return "Output not reloaded yet"
