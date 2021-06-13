using DashBootstrapComponents

form = dbc_form(
    [
        dbc_formgroup(
            [
                dbc_label("Email", className="mr-2"),
                dbc_input(type="email", placeholder="Enter email"),
            ],
            className="mr-3",
        ),
        dbc_formgroup(
            [
                dbc_label("Password", className="mr-2"),
                dbc_input(type="password", placeholder="Enter password"),
            ],
            className="mr-3",
        ),
        dbc_button("Submit", color="primary"),
    ],
    inline=true,
);
