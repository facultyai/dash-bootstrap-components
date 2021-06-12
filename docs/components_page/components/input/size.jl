using DashBootstrapComponents, DashHtmlComponents

inputs = html_div([
    dbc_input(placeholder = "A large input...", bs_size = "lg", className = "mb-3"),
    dbc_input(placeholder = "A medium input...", bs_size = "md", className = "mb-3"),
    dbc_input(placeholder = "A small input...", bs_size = "sm"),
])
