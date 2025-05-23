import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

fade = html.Div(
    [
        dbc.Button("Toggle fade", id="fade-button", className="mb-3", n_clicks=0),
        dbc.Fade(
            dbc.Card(
                dbc.CardBody(
                    html.P("This content fades in and out", className="card-text")
                )
            ),
            id="fade",
            is_in=False,
            appear=False,
        ),
    ]
)


@app.callback(
    Output("fade", "is_in"),
    [Input("fade-button", "n_clicks")],
    [State("fade", "is_in")],
)
def toggle_fade(n, is_in):
    if not n:
        # Button has never been clicked
        return False
    return not is_in
