import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

modal = html.Div(
    [
        dbc.Button("Open modal", id="open-fs"),
        dbc.Modal(
            [
                dbc.ModalHeader(dbc.ModalTitle("Fullscreen modal")),
                dbc.ModalBody("Wow this thing takes up a lot of space..."),
            ],
            id="modal-fs",
            fullscreen=True,
        ),
    ]
)


@app.callback(
    Output("modal-fs", "is_open"),
    Input("open-fs", "n_clicks"),
    State("modal-fs", "is_open"),
)
def toggle_modal(n, is_open):
    if n:
        return not is_open
    return is_open
