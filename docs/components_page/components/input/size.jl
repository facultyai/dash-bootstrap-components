using DashBootstrapComponents, DashHtmlComponents

inputs = html_div([
    dbc_input(placeholder="A large input...", size="lg", class_name="mb-3"),
    dbc_input(placeholder="A medium input...", size="md", class_name="mb-3"),
    dbc_input(placeholder="A small input...", size="sm"),
]);
