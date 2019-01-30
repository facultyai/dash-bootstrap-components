import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

email_input = html.Div(
    [
        dbc.FormGroup(
            [
                dbc.Label("Email"),
                dbc.Input(id="email-input", type="email", value=""),
                dbc.FormText("We only accept gmail..."),
                dbc.FormFeedback(
                    "That looks like a gmail address :-)", valid=True
                ),
                dbc.FormFeedback(
                    "Sorry, we only accept gmail for some reason...",
                    valid=False,
                ),
            ]
        )
    ]
)


# --- Callbacks --- #
@app.callback(Output("email-input", "valid"), [Input("email-input", "value")])
def check_valid(text):
    if text and text.endswith("@gmail.com"):
        return True
    return False


@app.callback(
    Output("email-input", "invalid"), [Input("email-input", "value")]
)
def check_invalid(text):
    if text and not text.endswith("@gmail.com"):
        return True
    return False
