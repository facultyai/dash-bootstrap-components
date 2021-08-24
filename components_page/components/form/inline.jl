using DashBootstrapComponents

form = dbc_form(
    [
        dbc_formgroup(
            [
                dbc_label("Email", class_name="me-2"),
                dbc_input(type="email", placeholder="Enter email"),
            ],
            class_name="me-3",
        ),
        dbc_formgroup(
            [
                dbc_label("Password", class_name="me-2"),
                dbc_input(type="password", placeholder="Enter password"),
            ],
            class_name="me-3",
        ),
        dbc_button("Submit", color="primary"),
    ],
    inline=true,
);
