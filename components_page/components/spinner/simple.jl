using DashBootstrapComponents, DashHtmlComponents

spinners = html_div([
    dbc_spinner(color = "primary"),
    dbc_spinner(color = "secondary"),
    dbc_spinner(color = "success"),
    dbc_spinner(color = "warning"),
    dbc_spinner(color = "danger"),
    dbc_spinner(color = "info"),
    dbc_spinner(color = "light"),
    dbc_spinner(color = "dark"),
]);
