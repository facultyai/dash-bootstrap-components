import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

offcanvas = html.Div(
    [
        dbc.Button(
            "Open scrollable offcanvas",
            id="open-offcanvas-scrollable",
            n_clicks=0,
        ),
        dbc.Offcanvas(
            [
                html.Div("The contents on the main page are now scrollable."),
                dbc.Button(
                    "Close",
                    id="close-offcanvas-scrollable",
                    class_name="ml-auto",
                    n_clicks=0,
                ),
            ],
            id="offcanvas-scrollable",
            scrollable=True,
            title="Scrollable Offcanvas",
        ),
    ]
)


@app.callback(
    Output("offcanvas-scrollable", "is_open"),
    [
        Input("open-offcanvas-scrollable", "n_clicks"),
        Input("close-offcanvas-scrollable", "n_clicks"),
    ],
    [State("offcanvas-scrollable", "is_open")],
)
def toggle_offcanvas_scrollable(n1, n2, is_open):
    if n1 or n2:
        return not is_open
    return is_open
