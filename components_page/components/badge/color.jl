using DashBootstrapComponents, DashHtmlComponents

badges = html_span([
    dbc_badge("Primary", color = "primary", className = "me-1"),
    dbc_badge("Secondary", color = "secondary", className = "me-1"),
    dbc_badge("Success", color = "success", className = "me-1"),
    dbc_badge("Warning", color = "warning", className = "me-1"),
    dbc_badge("Danger", color = "danger", className = "me-1"),
    dbc_badge("Info", color = "info", className = "me-1"),
    dbc_badge("Light", color = "light", text_color = "dark", className = "me-1"),
    dbc_badge("Dark", color = "dark"),
]);
