using DashBootstrapComponents

inputs = html_div([
    dbc_input(placeholder = "A large input...", size = "lg", className = "mb-3"),
    dbc_input(placeholder = "A medium input...", size = "md", className = "mb-3"),
    dbc_input(placeholder = "A small input...", size = "sm"),
]);
