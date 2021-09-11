import dash_bootstrap_components as dbc
from dash import Input, Output, html

text_input = html.Div(
    [
        dbc.Input(id="input", placeholder="Type something...", type="text"),
        html.Br(),
        html.P(id="output"),
    ]
)


@app.callback(Output("output", "children"), [Input("input", "value")])
def output_text(value):
    return value
