using DashBootstrapComponents

form = dbc_form(
    dbc_row(
        [
            dbc_label("Email", width = "auto"),
            dbc_col(
                dbc_input(type = "email", placeholder = "Enter email"),
                className = "me-3",
            ),
            dbc_label("Password", width = "auto"),
            dbc_col(
                dbc_input(type = "password", placeholder = "Enter password"),
                className = "me-3",
            ),
            dbc_col(dbc_button("Submit", color = "primary"), width = "auto"),
        ],
        className = "g-2",
    ),
)
