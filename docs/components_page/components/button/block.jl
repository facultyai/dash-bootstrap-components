using DashBootstrapComponents

button = html_div(
    [
        dbc_button("Block button", color = "primary"),
        dbc_button("Block button", color = "secondary"),
    ],
    className = "d-grid gap-2",
);
