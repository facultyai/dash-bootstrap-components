using DashBootstrapComponents

row = html_div([
    dbc_row(dbc_col(html_div("A single, half-width column"), width = 6)),
    dbc_row(dbc_col(html_div("An automatically sized column"), width = "auto")),
    dbc_row([
        dbc_col(html_div("One of three columns"), width = 3),
        dbc_col(html_div("One of three columns")),
        dbc_col(html_div("One of three columns"), width = 3),
    ]),
]);
