import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output

progress = html.Div(
    [
        dbc.Progress(id="progress", value=0, striped=True, animated=True),
        dcc.Interval(id="interval", interval=250, n_intervals=0),
    ]
)


@app.callback(Output("progress", "value"), [Input("interval", "n_intervals")])
def advance_progress(n):
    return min(n % 110, 100)
