import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

modal = html.Div(
    [
        dbc.Button("Small modal", id="open-sm", className="mr-1"),
        dbc.Button("Large modal", id="open-lg", className="mr-1"),
        dbc.Button("Extra large modal", id="open-xl"),
        dbc.Modal(
            [
                dbc.ModalHeader("Header"),
                dbc.ModalBody("A small modal."),
                dbc.ModalFooter(
                    dbc.Button("Close", id="close-sm", className="ml-auto")
                ),
            ],
            id="modal-sm",
            size="sm",
        ),
        dbc.Modal(
            [
                dbc.ModalHeader("Header"),
                dbc.ModalBody("A large modal."),
                dbc.ModalFooter(
                    dbc.Button("Close", id="close-lg", className="ml-auto")
                ),
            ],
            id="modal-lg",
            size="lg",
        ),
        dbc.Modal(
            [
                dbc.ModalHeader("Header"),
                dbc.ModalBody("An extra large modal."),
                dbc.ModalFooter(
                    dbc.Button("Close", id="close-xl", className="ml-auto")
                ),
            ],
            id="modal-xl",
            size="xl",
        ),
    ]
)


def toggle_modal(n1, n2, is_open):
    if n1 or n2:
        return not is_open
    return is_open


app.callback(
    Output("modal-sm", "is_open"),
    [Input("open-sm", "n_clicks"), Input("close-sm", "n_clicks")],
    [State("modal-sm", "is_open")],
)(toggle_modal)

app.callback(
    Output("modal-lg", "is_open"),
    [Input("open-lg", "n_clicks"), Input("close-lg", "n_clicks")],
    [State("modal-lg", "is_open")],
)(toggle_modal)

app.callback(
    Output("modal-xl", "is_open"),
    [Input("open-xl", "n_clicks"), Input("close-xl", "n_clicks")],
    [State("modal-xl", "is_open")],
)(toggle_modal)
