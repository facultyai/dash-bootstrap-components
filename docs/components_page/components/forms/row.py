import dash_bootstrap_components as dbc
import dash_html_components as html

email_input = dbc.FormGroup(
    [
        dbc.Label("Email", html_for="example-email-row", width=2),
        dbc.Col(
            dbc.Input(
                type="email", id="example-email-row", placeholder="Enter email"
            ),
            width=10,
        ),
    ],
    row=True,
)

password_input = dbc.FormGroup(
    [
        dbc.Label("Password", html_for="example-password-row", width=2),
        dbc.Col(
            dbc.Input(
                type="password",
                id="example-password-row",
                placeholder="Enter password",
            ),
            width=10,
        ),
    ],
    row=True,
)

form = [html.H2("FormGroup row"), email_input, password_input]
