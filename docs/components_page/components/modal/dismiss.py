import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

modal = html.Div(
    [
        dbc.Button("Open modal", id="open-dismiss"),
        dbc.Modal(
            [
                dbc.ModalHeader(
                    dbc.ModalTitle("Dismissing"), close_button=False
                ),
                dbc.ModalBody(
                    "This modal has no close button and can't be dismissed by "
                    "pressing ESC. Try clicking on the backdrop or the below "
                    "close button."
                ),
                dbc.ModalFooter(dbc.Button("Close", id="close-dismiss")),
            ],
            id="modal-dismiss",
            keyboard=False,
            backdrop="static",
        ),
    ],
)


@app.callback(
    Output("modal-dismiss", "is_open"),
    [Input("open-dismiss", "n_clicks"), Input("close-dismiss", "n_clicks")],
    [State("modal-dismiss", "is_open")],
)
def toggle_modal(n_open, n_close, is_open):
    if n_open or n_close:
        return not is_open
    return is_open
