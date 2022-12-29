using DashBootstrapComponents

pagination = html_div([
    html_div("Collapse long pagination objects using ellipsis"),
    dbc_pagination(max_value = 10, fully_expanded = false),
    html_div("If space won't be saved, it won't be collapsed"),
    dbc_pagination(max_value = 5, fully_expanded = false),
])
