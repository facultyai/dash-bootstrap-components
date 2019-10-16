import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

popover = html.Div(
    [
        dbc.Button(
            "Click to toggle popover", id="popover-target", color="danger"
        ),
        dbc.Popover(
            [
                dbc.PopoverHeader("Popover header"),
                dbc.PopoverBody("And here's some amazing content. Cool!"),
            ],
            id="popover",
            is_open=False,
            target="popover-target",
        ),
    ]
)


@app.callback(
    Output("popover", "is_open"),
    [Input("popover-target", "n_clicks")],
    [State("popover", "is_open")],
)
def toggle_popover(n, is_open):
    if n:
        return not is_open
    return is_open
