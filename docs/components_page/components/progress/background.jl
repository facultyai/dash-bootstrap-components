using DashBootstrapComponents, DashHtmlComponents

progress = html_div([
    dbc_progress(value=25, color="success", class_name="mb-3"),
    dbc_progress(value=50, color="warning", class_name="mb-3"),
    dbc_progress(value=75, color="danger", class_name="mb-3"),
    dbc_progress(value=100, color="info"),
]);
