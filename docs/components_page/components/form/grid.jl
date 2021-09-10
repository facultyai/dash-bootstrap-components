using DashBootstrapComponents

form = dbc_row(
    [
        dbc_col(
            [
                dbc_label("Email", html_for = "example-email-grid"),
                dbc_input(
                    type = "email",
                    id = "example-email-grid",
                    placeholder = "Enter email",
                ),
            ],
            width = 6,
        ),
        dbc_col(
            [
                dbc_label("Password", html_for = "example-password-grid"),
                dbc_input(
                    type = "password",
                    id = "example-password-grid",
                    placeholder = "Enter password",
                ),
            ],
            width = 6,
        ),
    ],
    className = "g-3",
)
