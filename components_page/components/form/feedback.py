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
                dbc.FormFeedback(id="email-feedback"),
            ]
        )
    ]
)


# --- Callbacks --- #

# use the same function to set the `valid` prop of both input and feedback
def check_valid(text):
    if text and text.endswith("@gmail.com"):
        return True
    return False


app.callback(
    Output("email-feedback", "valid"), [Input("email-input", "value")]
)(check_valid)

app.callback(Output("email-input", "valid"), [Input("email-input", "value")])(
    check_valid
)


# this callback sets the input style to invalid if something has been typed
# but it's not right.
@app.callback(
    Output("email-input", "invalid"), [Input("email-input", "value")]
)
def check_invalid(text):
    if text and not text.endswith("@gmail.com"):
        return True
    return False


# this callback modifies the feedback text according to whether the input is
# valid or invalid
@app.callback(
    Output("email-feedback", "children"), [Input("email-feedback", "valid")]
)
def make_feedback(valid):
    if valid:
        return "That looks like a gmail address :-)"
    return "Sorry, we only accept gmail for some reason..."
