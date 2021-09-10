import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

alert = html.Div(
    [
        dbc.Button(
            "Toggle", id="alert-toggle-auto", className="me-1", n_clicks=0
        ),
        html.Hr(),
        dbc.Alert(
            "Hello! I am an auto-dismissing alert!",
            id="alert-auto",
            is_open=True,
            duration=4000,
        ),
    ]
)


@app.callback(
    Output("alert-auto", "is_open"),
    [Input("alert-toggle-auto", "n_clicks")],
    [State("alert-auto", "is_open")],
)
def toggle_alert(n, is_open):
    if n:
        return not is_open
    return is_open
