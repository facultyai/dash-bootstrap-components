import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

placement_selector = dbc.RadioItems(
    id="offcanvas-placement-selector",
    options=[
        {"label": "start (Default)", "value": "start"},
        {"label": "end", "value": "end"},
        {"label": "top", "value": "top"},
        {"label": "bottom", "value": "bottom"},
    ],
    value="start",
)

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
                html.P(
                    "Change the placement of this offcanvas with the "
                    "options below",
                    class_name="mb-3",
                ),
                placement_selector,
            ],
            id="offcanvas-placement",
            title="Placement",
            is_open=False,
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
