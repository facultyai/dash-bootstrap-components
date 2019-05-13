import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

collapses = html.Div(
    [
        dbc.Button(
            "Toggle left", color="primary", id="left", className="mr-1"
        ),
        dbc.Button(
            "Toggle right", color="primary", id="right", className="mr-1"
        ),
        dbc.Button("Toggle both", color="primary", id="both"),
        dbc.Row(
            [
                dbc.Col(
                    dbc.Collapse(
                        dbc.Card("This is the left card.", body=True),
                        id="left-collapse",
                    )
                ),
                dbc.Col(
                    dbc.Collapse(
                        dbc.Card("This is the right card!", body=True),
                        id="right-collapse",
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
