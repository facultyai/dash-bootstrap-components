
import dash_html_components as html
from dash.dependencies import Input, Output
import dash_bootstrap_components as dbc

colorpicker = dbc.FormGroup(
    [
        dbc.Label("Choose the text color:", id='label'),
        dbc.Input(
            type="color",
            id="colorpicker",
            value="#000000",
            style={"width": 75, "height": 50},
        ),
    ]
)


@app.callback(
    Output("label", "style"), Input("colorpicker", "value"),
)
def update_text(color):
    return {"color": color}
