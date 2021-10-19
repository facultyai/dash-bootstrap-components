using DashBootstrapComponents, DashHtmlComponents

pagination = html_div([
    dbc_pagination(max_value = 5, first_last = true),
    dbc_pagination(max_value = 5, previous_next = true),
    dbc_pagination(max_value = 5, first_last = true, previous_next = true),
])
