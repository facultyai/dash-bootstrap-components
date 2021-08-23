using DashBootstrapComponents, DashHtmlComponents

buttons = html_div([
    dbc_button("Primary", outline = true, color = "primary", class_name = "me-1"),
    dbc_button("Secondary", outline = true, color = "secondary", class_name = "me-1"),
    dbc_button("Success", outline = true, color = "success", class_name = "me-1"),
    dbc_button("Warning", outline = true, color = "warning", class_name = "me-1"),
    dbc_button("Danger", outline = true, color = "danger", class_name = "me-1"),
    dbc_button("Info", outline = true, color = "info", class_name = "me-1"),
    dbc_button("Light", outline = true, color = "light", class_name = "me-1"),
    dbc_button("Dark", outline = true, color = "dark"),
]);
