import dash_bootstrap_components as dbc
from dash import Input, Output, html

# `options` is provided as an array of dictionaries
checklist = html.Div(
    [
        dbc.Checklist(
            [
                {"label": "Option 1", "value": 1},
                {"label": "Option B", "value": 2},
                {"label": "Option III", "value": 3},
                {"label": "4", "value": 4},
            ],
            [3],
            id="shorthand-checklist",
        ),
    ],
    className="py-2",
)

# All items in this list will have the value the same as the label
select = html.Div(
    dbc.Select(
        ["Option 1", "Option B", "Option III", 4],
        "Option III",
        id="shorthand-select",
    ),
    className="py-2",
)

# `options` is provided as value: label pairs - value must be a string
radioitems = html.Div(
    [
        dbc.RadioItems(
            {
                "1": "Option 1",
                "2": "Option B",
                "3": "Option III",
                "4": 4,
            },
            "3",
            id="shorthand-radio",
        ),
    ],
    className="py-2",
)

short_hand = html.Div(
    [
        dbc.Form([checklist, select, radioitems]),
        html.P(id="shorthand-output"),
    ]
)


@app.callback(
    Output("shorthand-output", "children"),
    [
        Input("shorthand-checklist", "value"),
        Input("shorthand-select", "value"),
        Input("shorthand-radio", "value"),
    ],
)
def on_form_change(checklist_value, select_value, radio_items_value):
    checklist = ", ".join([str(c) for c in checklist_value])

    output = (
        f"Checklist: [{checklist}], Selected: {select_value}, ",
        f"Radio: {radio_items_value}",
    )

    return output
