using DashBootstrapComponents

buttons = html_div([
    dbc_button("Regular", color = "primary", className = "me-1"),
    dbc_button("Active", color = "primary", active = true, className = "me-1"),
    dbc_button("Disabled", color = "primary", disabled = true),
]);
