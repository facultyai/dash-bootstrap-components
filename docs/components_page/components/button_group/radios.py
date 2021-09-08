import dash_bootstrap_components as dbc
from dash import Input, Output, html

button_group = html.Div(
    [
        dbc.RadioItems(
            id="radios",
            class_name="btn-group",
            input_class_name="btn-check",
            label_class_name="btn btn-outline-primary",
            label_checked_class_name="active",
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
