using DashBootstrapComponents

email_input = dbc_row(
    [
        dbc_label("Email", html_for = "example-email-row", width = 2),
        dbc_col(
            dbc_input(
                type = "email",
                id = "example-email-row",
                placeholder = "Enter email",
            ),
            width = 10,
        ),
    ],
    className = "mb-3",
);

password_input = dbc_row(
    [
        dbc_label("Password", html_for = "example-password-row", width = 2),
        dbc_col(
            dbc_input(
                type = "password",
                id = "example-password-row",
                placeholder = "Enter password",
            ),
            width = 10,
        ),
    ],
    className = "mb-3",
);

radios_input = dbc_row(
    [
        dbc_label("Radios", html_for = "example-radios-row", width = 2),
        dbc_col(
            dbc_radioitems(
                id = "example-radios-row",
                options = [
                    Dict("label" => "First radio", "value" => 1),
                    Dict("label" => "Second radio", "value" => 2),
                    Dict(
                        "label" => "Third disabled radio",
                        "value" => 3,
                        "disabled" => true,
                    ),
                ],
            ),
            width = 10,
        ),
    ],
    className = "mb-3",
);

form = dbc_form([email_input, password_input, radios_input]);
