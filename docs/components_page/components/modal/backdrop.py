import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

modal = html.Div(
    [
        html.Div(
            [
                dbc.Label("Backdrop:"),
                dbc.RadioItems(
                    id="backdrop-selector",
                    options=[
                        {"label": "True (default)", "value": True},
                        {"label": "False", "value": False},
                        {"label": "'static'", "value": "static"},
                    ],
                    inline=True,
                    value=True,
                ),
            ],
            className="mb-2",
        ),
        dbc.Button("Open modal", id="open-backdrop", n_clicks=0),
        dbc.Modal(
            [
                dbc.ModalHeader(dbc.ModalTitle("Header"), close_button=True),
                dbc.ModalBody(
                    "Change the backdrop of this modal with the radio buttons"
                ),
                dbc.ModalFooter(
                    dbc.Button(
                        "Close",
                        id="close-backdrop",
                        className="ms-auto",
                        n_clicks=0,
                    )
                ),
            ],
            id="modal-backdrop",
            is_open=False,
        ),
    ]
)


@app.callback(
    Output("modal-backdrop", "backdrop"), [Input("backdrop-selector", "value")]
)
def select_backdrop(backdrop):
    return backdrop


@app.callback(
    Output("modal-backdrop", "is_open"),
    [Input("open-backdrop", "n_clicks"), Input("close-backdrop", "n_clicks")],
    [State("modal-backdrop", "is_open")],
)
def toggle_modal(n1, n2, is_open):
    if n1 or n2:
        return not is_open
    return is_open
