import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

radioitems = dbc.FormGroup(
    [
        dbc.Label("Choose one"),
        dbc.RadioItems(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            value=1,
            id="radioitems-input",
        ),
    ]
)

checklist = dbc.FormGroup(
    [
        dbc.Label("Choose a bunch"),
        dbc.Checklist(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            values=[],
            id="checklist-input",
        ),
    ]
)

inputs = html.Div(
    [
        dbc.Form([radioitems, checklist]),
        html.P(id="radioitems-checklist-output"),
    ]
)


@app.callback(
    Output("radioitems-checklist-output", "children"),
    [Input("radioitems-input", "value"), Input("checklist-input", "values")],
)
def on_form_change(radio_items_value, checklist_values):
    output_string = "Radio button {} and {} checklist items are selected.".format(
        radio_items_value, len(checklist_values)
    )
    return output_string
