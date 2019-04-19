import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

modal = html.Div(
    [
        dbc.FormGroup(
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
            ]
        ),
        dbc.Button("Open modal", id="open-backdrop"),
        dbc.Modal(
            [
                dbc.ModalHeader("Header"),
                dbc.ModalBody(
                    "Change the backdrop of this modal with the radio buttons"
                ),
                dbc.ModalFooter(
                    dbc.Button(
                        "Close", id="close-backdrop", className="ml-auto"
                    )
                ),
            ],
            id="modal-backdrop",
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
