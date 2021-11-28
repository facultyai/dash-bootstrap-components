using DashBootstrapComponents

row = html_div([
    dbc_row([
        dbc_col(html_div("One of three columns"), md = 4),
        dbc_col(html_div("One of three columns"), md = 4),
        dbc_col(html_div("One of three columns"), md = 4),
    ]),
    dbc_row([
        dbc_col(html_div("One of four columns"), width = 6, lg = 3),
        dbc_col(html_div("One of four columns"), width = 6, lg = 3),
        dbc_col(html_div("One of four columns"), width = 6, lg = 3),
        dbc_col(html_div("One of four columns"), width = 6, lg = 3),
    ]),
]);
