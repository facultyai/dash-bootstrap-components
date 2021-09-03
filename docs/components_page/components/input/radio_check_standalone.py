import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

standalone_radio_check = html.Div(
    [
        html.Div(
            [
                dbc.Checkbox(id="standalone-checkbox"),
                dbc.Label(
                    "This is a checkbox",
                    html_for="standalone-checkbox",
                    check=True,
                ),
            ],
            class_name="form-check",
        ),
        html.Div(
            [
                dbc.RadioButton(id="standalone-radio"),
                dbc.Label(
                    "This is a radio button",
                    html_for="standalone-radio",
                    check=True,
                ),
            ],
            class_name="form-check",
        ),
        html.P(id="standalone-radio-check-output"),
    ]
)


@app.callback(
    Output("standalone-radio-check-output", "children"),
    [
        Input("standalone-checkbox", "checked"),
        Input("standalone-radio", "checked"),
    ],
)
def on_form_change(checkbox_checked, radio_checked):
    if checkbox_checked and radio_checked:
        return "Both checked."
    elif checkbox_checked or radio_checked:
        return "One checked."
    else:
        return "None checked."
