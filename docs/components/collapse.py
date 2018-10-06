
import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

collapse = html.Div(
    [
        html.H2("Collapse"),
        dbc.Button(
            "Open collapse",
            id="collapse-button",
            style={"margin-bottom": "1rem"},
        ),
        dbc.Collapse(
            dbc.Card(dbc.CardBody("This content is hidden in the collapse")),
            id="collapse",
        ),
    ]
)


@app.callback(
    Output("collapse", "isOpen"),
    [Input("collapse-button", "n_clicks")],
    [State("collapse", "isOpen")],
)
def toggle_collapse(n, is_open):
    if n:
        return not is_open
    return is_open
