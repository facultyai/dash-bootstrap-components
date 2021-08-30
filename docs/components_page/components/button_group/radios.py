import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

button_group = html.Div(
    [
        dbc.RadioItems(
            id="radios",
            class_name="btn-group",
            input_class_name="btn-check",
            label_class_name="btn btn-outline-primary",
            label_checked_class_name="active btn-primary",
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
                {"label": "Option 3", "value": 3},
            ],
            value=1,
        ),
        html.Div(id="output"),
    ],
    class_name="radio-group",
)


@app.callback(Output("output", "children"), [Input("radios", "value")])
def display_value(value):
    return f"Selected value: {value}"
