using DashBootstrapComponents

spinners = html_div([
    dbc_button(
        dbc_spinner(size = "sm"),
        color = "primary",
        disabled = true,
        className = "me-1",
    ),
    dbc_button(
        [dbc_spinner(size = "sm"), " Loading..."],
        color = "primary",
        disabled = true,
    ),
]);
