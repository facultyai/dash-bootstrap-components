import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

radio_items_button_group = html.Div(
    [
        dbc.RadioItems(
            id="radios",
            className="btn-group",
            labelClassName="btn btn-secondary",
            labelCheckedClassName="active",
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
                {"label": "Option 3", "value": 3},
            ],
            value=1,
        ),
        html.Div(id="output"),
    ],
    className="radio-group",
)


@app.callback(Output("output", "children"), [Input("radios", "value")])
def display_value(value):
    return f"Selected value: {value}"
