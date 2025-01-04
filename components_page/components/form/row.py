import dash_bootstrap_components as dbc

email_input = dbc.Row(
    [
        dbc.Label("Email", html_for="example-email-row", width=2),
        dbc.Col(
            dbc.Input(type="email", id="example-email-row", placeholder="Enter email"),
            width=10,
        ),
    ],
    className="mb-3",
)

password_input = dbc.Row(
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
    className="mb-3",
)

radios_input = dbc.Row(
    [
        dbc.Label("Radios", html_for="example-radios-row", width=2),
        dbc.Col(
            dbc.RadioItems(
                id="example-radios-row",
                options=[
                    {"label": "First radio", "value": 1},
                    {"label": "Second radio", "value": 2},
                    {
                        "label": "Third disabled radio",
                        "value": 3,
                        "disabled": True,
                    },
                ],
            ),
            width=10,
        ),
    ],
    className="mb-3",
)

form = dbc.Form([email_input, password_input, radios_input])
