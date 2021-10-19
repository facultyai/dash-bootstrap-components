using DashBootstrapComponents, DashHtmlComponents

buttons = html_div([
    dbc_button("Primary", color = "primary", className = "me-1"),
    dbc_button("Secondary", color = "secondary", className = "me-1"),
    dbc_button("Success", color = "success", className = "me-1"),
    dbc_button("Warning", color = "warning", className = "me-1"),
    dbc_button("Danger", color = "danger", className = "me-1"),
    dbc_button("Info", color = "info", className = "me-1"),
    dbc_button("Light", color = "light", className = "me-1"),
    dbc_button("Dark", color = "dark", className = "me-1"),
    dbc_button("Link", color = "link"),
]);
