import dash_bootstrap_components as dbc
from dash import Input, Output, html

list_group = html.Div(
    [
        dbc.ListGroup(
            [
                dbc.ListGroupItem("Internal link", href="/l/components/list_group"),
                dbc.ListGroupItem("External link", href="https://google.com"),
                dbc.ListGroupItem(
                    "Disabled link", href="https://google.com", disabled=True
                ),
                dbc.ListGroupItem("Button", id="button-item", n_clicks=0, action=True),
            ]
        ),
        html.P(id="counter"),
    ]
)


@app.callback(Output("counter", "children"), [Input("button-item", "n_clicks")])
def count_clicks(n):
    return f"Button clicked {n} times"
