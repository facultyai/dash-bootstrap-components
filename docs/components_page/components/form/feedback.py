import dash_bootstrap_components as dbc
from dash import Input, Output, html

email_input = html.Div(
    [
        dbc.Label("Email"),
        dbc.Input(id="email-input", type="email", value=""),
        dbc.FormText("We only accept gmail..."),
        dbc.FormFeedback("That looks like a gmail address :-)", type="valid"),
        dbc.FormFeedback(
            "Sorry, we only accept gmail for some reason...",
            type="invalid",
        ),
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
