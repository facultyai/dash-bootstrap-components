import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

offcanvas = html.Div(
    [
        dbc.Button(
            "Open Offcanvas",
            id="open-offcanvas-placement",
            n_clicks=0,
            class_name="m-2",
        ),
        dbc.Offcanvas(
            [
                html.Div(
                    "Change the placement of this offcanvas with the "
                    "options below"
                ),
                dbc.FormGroup(
                    # FIXME: Fix styling here
                    [
                        dbc.InputGroupAddon("Placement", addon_type="prepend"),
                        dbc.Select(
                            id="offcanvas-placement-selector",
                            options=[
                                {
                                    "label": "start (Default)",
                                    "value": "start",
                                },
                                {"label": "end", "value": "end"},
                                {
                                    "label": "top",
                                    "value": "top",
                                },
                                {"label": "bottom", "value": "bottom"},
                            ],
                            value="start",
                        ),
                    ],
                    class_name="p-3 m-2 border",
                ),
            ],
            id="offcanvas-placement",
            title="Placement",
        ),
    ]
)


@app.callback(
    Output("offcanvas-placement", "is_open"),
    Input("open-offcanvas-placement", "n_clicks"),
    [State("offcanvas-placement", "is_open")],
)
def toggle_offcanvas(n1, is_open):
    if n1:
        return not is_open
    return is_open


@app.callback(
    Output("offcanvas-placement", "placement"),
    Input("offcanvas-placement-selector", "value"),
)
def toggle_placement(placement):
    return placement
