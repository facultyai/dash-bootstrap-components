import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

backdrop_selector = dbc.RadioItems(
    id="offcanvas-backdrop-selector",
    options=[
        {"label": "True (default)", "value": True},
        {"label": "False", "value": False},
        {"label": "Static (no dismiss)", "value": "static"},
    ],
    inline=True,
    value=True,
)

offcanvas = html.Div(
    [
        dbc.Button(
            "Open backdrop offcanvas", id="open-offcanvas-backdrop", n_clicks=0
        ),
        dbc.Offcanvas(
            [
                html.P(
                    "Change the backdrop of this offcanvas with the radio "
                    "buttons",
                    class_name="mb-3",
                ),
                backdrop_selector,
            ],
            id="offcanvas-backdrop",
            title="Offcanvas with/without backdrop",
            is_open=False,
        ),
    ]
)


@app.callback(
    Output("offcanvas-backdrop", "backdrop"),
    [Input("offcanvas-backdrop-selector", "value")],
)
def select_backdrop(backdrop):
    return backdrop


@app.callback(
    Output("offcanvas-backdrop", "is_open"),
    Input("open-offcanvas-backdrop", "n_clicks"),
    State("offcanvas-backdrop", "is_open"),
)
def toggle_offcanvas(n1, is_open):
    if n1:
        return not is_open
    return is_open
