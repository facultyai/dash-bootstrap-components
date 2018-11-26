import dash_bootstrap_components as dbc

form = dbc.Row(
    [
        dbc.Col(
            dbc.FormGroup(
                [
                    dbc.Label("Email", html_for="example-email-grid"),
                    dbc.Input(
                        type="email",
                        id="example-email-grid",
                        placeholder="Enter email",
                    ),
                ]
            ),
            width=6,
        ),
        dbc.Col(
            dbc.FormGroup(
                [
                    dbc.Label("Password", html_for="example-password-grid"),
                    dbc.Input(
                        type="password",
                        id="example-password-grid",
                        placeholder="Enter password",
                    ),
                ]
            ),
            width=6,
        ),
    ],
    form=True,
)
