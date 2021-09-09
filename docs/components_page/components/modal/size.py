import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

modal = html.Div(
    [
        dbc.Button("Small modal", id="open-sm", className="me-1", n_clicks=0),
        dbc.Button("Large modal", id="open-lg", className="me-1", n_clicks=0),
        dbc.Button("Extra large modal", id="open-xl", n_clicks=0),
        dbc.Modal(
            [
                dbc.ModalHeader(dbc.ModalTitle("Header")),
                dbc.ModalBody("A small modal."),
            ],
            id="modal-sm",
            size="sm",
            is_open=False,
        ),
        dbc.Modal(
            [
                dbc.ModalHeader(dbc.ModalTitle("Header")),
                dbc.ModalBody("A large modal."),
            ],
            id="modal-lg",
            size="lg",
            is_open=False,
        ),
        dbc.Modal(
            [
                dbc.ModalHeader(dbc.ModalTitle("Header")),
                dbc.ModalBody("An extra large modal."),
            ],
            id="modal-xl",
            size="xl",
            is_open=False,
        ),
    ]
)


def toggle_modal(n1, is_open):
    if n1:
        return not is_open
    return is_open


app.callback(
    Output("modal-sm", "is_open"),
    Input("open-sm", "n_clicks"),
    State("modal-sm", "is_open"),
)(toggle_modal)

app.callback(
    Output("modal-lg", "is_open"),
    Input("open-lg", "n_clicks"),
    State("modal-lg", "is_open"),
)(toggle_modal)

app.callback(
    Output("modal-xl", "is_open"),
    Input("open-xl", "n_clicks"),
    State("modal-xl", "is_open"),
)(toggle_modal)
