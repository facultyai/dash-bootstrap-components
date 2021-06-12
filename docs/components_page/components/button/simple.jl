using DashBootstrapComponents, DashHtmlComponents

buttons = html_div([
    dbc_button("Primary", color = "primary", className = "mr-1"),
    dbc_button("Secondary", color = "secondary", className = "mr-1"),
    dbc_button("Success", color = "success", className = "mr-1"),
    dbc_button("Warning", color = "warning", className = "mr-1"),
    dbc_button("Danger", color = "danger", className = "mr-1"),
    dbc_button("Info", color = "info", className = "mr-1"),
    dbc_button("Light", color = "light", className = "mr-1"),
    dbc_button("Dark", color = "dark", className = "mr-1"),
    dbc_button("Link", color = "link"),
])
