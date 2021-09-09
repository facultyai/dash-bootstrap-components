import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

modal_1 = dbc.Modal(
    [
        dbc.ModalHeader(dbc.ModalTitle("Modal 1")),
        dbc.ModalBody("This is the content of the first modal"),
        dbc.ModalFooter(
            dbc.Button(
                "Open Modal 2",
                id="open-toggle-modal-2",
                className="ms-auto",
                n_clicks=0,
            )
        ),
    ],
    id="toggle-modal-1",
    is_open=False,
)

modal_2 = dbc.Modal(
    [
        dbc.ModalHeader(dbc.ModalTitle("Modal 2")),
        dbc.ModalBody("This is the second modal"),
        dbc.ModalFooter(
            dbc.Button(
                "Back to Modal 1",
                id="open-toggle-modal-1",
                className="ms-auto",
                n_clicks=0,
            )
        ),
    ],
    id="toggle-modal-2",
    is_open=False,
)


modal = html.Div(
    [
        dbc.Button("Open modal", id="open-toggle-modal", n_clicks=0),
        modal_1,
        modal_2,
    ]
)


@app.callback(
    Output("toggle-modal-1", "is_open"),
    [
        Input("open-toggle-modal", "n_clicks"),
        Input("open-toggle-modal-1", "n_clicks"),
        Input("open-toggle-modal-2", "n_clicks"),
    ],
    [State("toggle-modal-1", "is_open")],
)
def toggle_modal_1(n0, n1, n2, is_open):
    if n0 or n1 or n2:
        return not is_open
    return is_open


@app.callback(
    Output("toggle-modal-2", "is_open"),
    [
        Input("open-toggle-modal-2", "n_clicks"),
        Input("open-toggle-modal-1", "n_clicks"),
    ],
    [State("toggle-modal-2", "is_open")],
)
def toggle_modal_2(n2, n1, is_open):
    if n1 or n2:
        return not is_open
    return is_open
