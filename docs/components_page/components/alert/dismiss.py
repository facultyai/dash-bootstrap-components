import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

alert = html.Div(
    [
        dbc.Button(
            "Toggle alert with fade",
            id="alert-toggle-fade",
            className="me-1",
            n_clicks=0,
        ),
        dbc.Button(
            "Toggle alert without fade", id="alert-toggle-no-fade", n_clicks=0
        ),
        html.Hr(),
        dbc.Alert(
            "Hello! I am an alert",
            id="alert-fade",
            dismissable=True,
            is_open=True,
        ),
        dbc.Alert(
            "Hello! I am an alert that doesn't fade in or out",
            id="alert-no-fade",
            dismissable=True,
            fade=False,
            is_open=True,
        ),
    ]
)


@app.callback(
    Output("alert-fade", "is_open"),
    [Input("alert-toggle-fade", "n_clicks")],
    [State("alert-fade", "is_open")],
)
def toggle_alert(n, is_open):
    if n:
        return not is_open
    return is_open


@app.callback(
    Output("alert-no-fade", "is_open"),
    [Input("alert-toggle-no-fade", "n_clicks")],
    [State("alert-no-fade", "is_open")],
)
def toggle_alert_no_fade(n, is_open):
    if n:
        return not is_open
    return is_open
