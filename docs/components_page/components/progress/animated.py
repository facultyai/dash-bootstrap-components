import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

progress = html.Div(
    [
        dbc.Progress(value=80, id="animated-progress", animated=False, striped=True),
        dbc.Button(
            "Toggle animation",
            id="animation-toggle",
            className="mt-3",
            n_clicks=0,
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
