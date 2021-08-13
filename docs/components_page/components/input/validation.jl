using DashBootstrapComponents, DashHtmlComponents

inputs = html_div([
    dbc_input(placeholder="Valid input...", valid=true, class_name="mb-3"),
    dbc_input(placeholder="Invalid input...", invalid=true),
]);
