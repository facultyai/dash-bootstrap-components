using DashBootstrapComponents

row_content = [
    dbc_col(html_div("One of two columns"), width = 4),
    dbc_col(html_div("One of two columns"), width = 4),
];

row = html_div([
    dbc_row(row_content, justify = "start"),
    dbc_row(row_content, justify = "center"),
    dbc_row(row_content, justify = "end"),
    dbc_row(row_content, justify = "between"),
    dbc_row(row_content, justify = "around"),
    dbc_row(row_content, justify = "evenly"),
]);
