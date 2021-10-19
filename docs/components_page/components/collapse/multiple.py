import dash_bootstrap_components as dbc
from dash import Input, Output, State, html

collapses = html.Div(
    [
        dbc.Button(
            "Toggle left",
            color="primary",
            id="left",
            className="me-1",
            n_clicks=0,
        ),
        dbc.Button(
            "Toggle right",
            color="primary",
            id="right",
            className="me-1",
            n_clicks=0,
        ),
        dbc.Button("Toggle both", color="primary", id="both", n_clicks=0),
        dbc.Row(
            [
                dbc.Col(
                    dbc.Collapse(
                        dbc.Card("This is the left card!", body=True),
                        id="left-collapse",
                        is_open=True,
                    )
                ),
                dbc.Col(
                    dbc.Collapse(
                        dbc.Card("This is the right card!", body=True),
                        id="right-collapse",
                        is_open=True,
                    )
                ),
            ],
            className="mt-3",
        ),
    ]
)


@app.callback(
    Output("left-collapse", "is_open"),
    [Input("left", "n_clicks"), Input("both", "n_clicks")],
    [State("left-collapse", "is_open")],
)
def toggle_left(n_left, n_both, is_open):
    if n_left or n_both:
        return not is_open
    return is_open


@app.callback(
    Output("right-collapse", "is_open"),
    [Input("right", "n_clicks"), Input("both", "n_clicks")],
    [State("right-collapse", "is_open")],
)
def toggle_left(n_right, n_both, is_open):
    if n_right or n_both:
        return not is_open
    return is_open
