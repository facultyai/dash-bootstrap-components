import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

fade = html.Div(
    [
        html.H2("Fade"),
        dbc.Button(
            "Toggle fade", id="fade-button", style={"margin-bottom": "1rem"}
        ),
        dbc.Fade(
            dbc.Card(
                dbc.CardBody(dbc.CardText("This content fades in and out"))
            ),
            id="fade",
        ),
    ]
)


@app.callback(
    Output("fade", "in"),
    [Input("fade-button", "n_clicks")],
    [State("fade", "in")],
)
def toggle_fade(n, is_in):
    if n:
        return not is_in
    return is_in
