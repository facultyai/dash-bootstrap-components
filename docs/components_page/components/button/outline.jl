using DashBootstrapComponents, DashHtmlComponents

buttons = html_div([
    dbc_button("Primary", outline = true, color = "primary", className = "me-1"),
    dbc_button("Secondary", outline = true, color = "secondary", className = "me-1"),
    dbc_button("Success", outline = true, color = "success", className = "me-1"),
    dbc_button("Warning", outline = true, color = "warning", className = "me-1"),
    dbc_button("Danger", outline = true, color = "danger", className = "me-1"),
    dbc_button("Info", outline = true, color = "info", className = "me-1"),
    dbc_button("Light", outline = true, color = "light", className = "me-1"),
    dbc_button("Dark", outline = true, color = "dark"),
]);
