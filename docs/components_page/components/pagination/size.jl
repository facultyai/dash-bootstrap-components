using DashBootstrapComponents

pagination = html_div([
    html_div("Small"),
    dbc_pagination(max_value = 5, size = "sm"),
    html_div("Default"),
    dbc_pagination(max_value = 5),
    html_div("Large"),
    dbc_pagination(max_value = 5, size = "lg"),
])
