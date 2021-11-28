using DashBootstrapComponents

row = html_div([
    dbc_row(dbc_col(html_div("A single column"))),
    dbc_row([
        dbc_col(html_div("One of three columns")),
        dbc_col(html_div("One of three columns")),
        dbc_col(html_div("One of three columns")),
    ]),
]);
