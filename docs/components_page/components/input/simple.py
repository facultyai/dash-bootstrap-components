import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

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
