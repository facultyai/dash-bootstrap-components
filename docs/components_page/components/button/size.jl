using DashBootstrapComponents

buttons = html_div([
    dbc_button("Large button", size = "lg", className = "me-1"),
    dbc_button("Regular button", className = "me-1"),
    dbc_button("Small button", size = "sm"),
]);
