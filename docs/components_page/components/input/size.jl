using DashBootstrapComponents, DashHtmlComponents

inputs = html_div([
    dbc_input(placeholder="A large input...", bs_size="lg", class_name="mb-3"),
    dbc_input(placeholder="A medium input...", bs_size="md", class_name="mb-3"),
    dbc_input(placeholder="A small input...", bs_size="sm"),
]);
