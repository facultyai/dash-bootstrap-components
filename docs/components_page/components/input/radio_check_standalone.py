import dash_bootstrap_components as dbc
from dash import Input, Output, html

standalone_radio_check = html.Div(
    [
        html.Div(
            [
                dbc.Checkbox(
                    id="standalone-checkbox",
                    label="This is a checkbox",
                    value=False,
                ),
                dbc.Switch(
                    id="standalone-switch",
                    label="This is a toggle switch",
                    value=False,
                ),
                dbc.RadioButton(
                    id="standalone-radio",
                    label="This is a radio button",
                    value=False,
                ),
            ]
        ),
        html.P(id="standalone-radio-check-output"),
    ]
)


@app.callback(
    Output("standalone-radio-check-output", "children"),
    [
        Input("standalone-checkbox", "value"),
        Input("standalone-switch", "value"),
        Input("standalone-radio", "value"),
    ],
)
def on_form_change(checkbox_checked, switch_checked, radio_checked):
    return (
        f"Selections:  Checkbox: {checkbox_checked}, "
        f"Toggle Switch: {switch_checked}, "
        f"Radio Button: {radio_checked}"
    )
