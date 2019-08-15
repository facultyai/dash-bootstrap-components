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
@app.callback(
    [Output("email-input", "valid"), Output("email-input", "invalid")],
    [Input("email-input", "value")],
)
def check_validity(text):
    if text:
        is_gmail = text.endswith("@gmail.com")
        return is_gmail, not is_gmail
    return False, False
