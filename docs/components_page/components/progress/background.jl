using DashBootstrapComponents, DashHtmlComponents

progress = html_div([
    dbc_progress(value = 25, color = "success", className = "mb-3"),
    dbc_progress(value = 50, color = "warning", className = "mb-3"),
    dbc_progress(value = 75, color = "danger", className = "mb-3"),
    dbc_progress(value = 100, color = "info"),
]);
