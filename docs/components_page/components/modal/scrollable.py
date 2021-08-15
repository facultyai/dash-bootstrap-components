import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

modal = html.Div(
    [
        dbc.Button(
            "Scrolling modal", id="open-scroll", class_name="me-1", n_clicks=0
        ),
        dbc.Button(
            "Modal with scrollable body", id="open-body-scroll", n_clicks=0
        ),
        dbc.Modal(
            [
                dbc.ModalHeader("Header"),
                dbc.ModalBody(LOREM),
                dbc.ModalFooter(
                    dbc.Button(
                        "Close",
                        id="close-scroll",
                        class_name="ms-auto",
                        n_clicks=0,
                    )
                ),
            ],
            id="modal-scroll",
            is_open=False,
        ),
        dbc.Modal(
            [
                dbc.ModalHeader("Header"),
                dbc.ModalBody(LOREM),
                dbc.ModalFooter(
                    dbc.Button(
                        "Close",
                        id="close-body-scroll",
                        class_name="ms-auto",
                        n_clicks=0,
                    )
                ),
            ],
            id="modal-body-scroll",
            scrollable=True,
            is_open=False,
        ),
    ]
)


def toggle_modal(n1, n2, is_open):
    if n1 or n2:
        return not is_open
    return is_open


app.callback(
    Output("modal-scroll", "is_open"),
    [Input("open-scroll", "n_clicks"), Input("close-scroll", "n_clicks")],
    [State("modal-scroll", "is_open")],
)(toggle_modal)

app.callback(
    Output("modal-body-scroll", "is_open"),
    [
        Input("open-body-scroll", "n_clicks"),
        Input("close-body-scroll", "n_clicks"),
    ],
    [State("modal-body-scroll", "is_open")],
)(toggle_modal)
