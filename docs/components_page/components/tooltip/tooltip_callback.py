import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

tooltip = html.Div(
    [
        dbc.Button(
            "Toggle",
            id="toggle",
            color="success",
            className="me-4",
            n_clicks=0,
        ),
        dbc.Button("Target", id="target", color="danger", n_clicks=0),
        dbc.Tooltip(
            "This is a tooltip",
            id="tooltip",
            is_open=False,
            target="target",
            trigger=None,
        ),
    ]
)


@app.callback(
    Output("tooltip", "is_open"),
    [Input("toggle", "n_clicks")],
    [State("tooltip", "is_open")],
)
def toggle_tooltip(n, is_open):
    if n:
        return not is_open
    return is_open
