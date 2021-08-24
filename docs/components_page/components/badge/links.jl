using DashBootstrapComponents, DashHtmlComponents

badges = html_span([
    dbc_badge("Primary", href = "#", color = "primary", class_name = "me-1"),
    dbc_badge("Secondary", href = "#", color = "secondary", class_name = "me-1"),
    dbc_badge("Success", href = "#", color = "success", class_name = "me-1"),
    dbc_badge("Warning", href = "#", color = "warning", class_name = "me-1"),
    dbc_badge("Danger", href = "#", color = "danger", class_name = "me-1"),
    dbc_badge("Info", href = "#", color = "info", class_name = "me-1"),
    dbc_badge("Light", href = "#", color = "light", class_name = "me-1"),
    dbc_badge("Dark", href = "#", color = "dark"),
]);
