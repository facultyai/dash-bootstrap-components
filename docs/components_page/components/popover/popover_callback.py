import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

popover = html.Div(
    [
        dbc.Button(
            "Toggle",
            id="toggle",
            color="success",
            className="me-4",
            n_clicks=0,
        ),
        dbc.Button("Target", id="target", color="danger", n_clicks=0),
        dbc.Popover(
            [
                dbc.PopoverHeader("Popover header"),
                dbc.PopoverBody("And here's some amazing content. Cool!"),
            ],
            id="popover",
            is_open=False,
            target="target",
        ),
    ]
)


@app.callback(
    Output("popover", "is_open"),
    [Input("toggle", "n_clicks")],
    [State("popover", "is_open")],
)
def toggle_popover(n, is_open):
    if n:
        return not is_open
    return is_open
