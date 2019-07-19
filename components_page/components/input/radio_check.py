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
                {"label": "Disabled option", "value": 3, "disabled": True},
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
                {"label": "Disabled Option", "value": 3, "disabled": True},
            ],
            value=[],
            id="checklist-input",
        ),
    ]
)

switches = dbc.FormGroup(
    [
        dbc.Label("Toggle a bunch"),
        dbc.Checklist(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
                {"label": "Disabled Option", "value": 3, "disabled": True},
            ],
            value=[],
            id="switches-input",
            switch=True,
        ),
    ]
)

inputs = html.Div(
    [
        dbc.Form([radioitems, checklist, switches]),
        html.P(id="radioitems-checklist-output"),
    ]
)


@app.callback(
    Output("radioitems-checklist-output", "children"),
    [
        Input("radioitems-input", "value"),
        Input("checklist-input", "value"),
        Input("switches-input", "value"),
    ],
)
def on_form_change(radio_items_value, checklist_value, switches_value):
    template = "Radio button {}, {} checklist item{} and {} switch{} selected."

    n_checkboxes = len(checklist_value)
    n_switches = len(switches_value)

    output_string = template.format(
        radio_items_value,
        n_checkboxes,
        "s" if n_checkboxes != 1 else "",
        n_switches,
        "es" if n_switches != 1 else "",
    )
    return output_string
