using DashBootstrapComponents, DashHtmlComponents

row = html_div([
    dbc_row(
        [
            dbc_col(html_div("One of two columns"), width = 4),
            dbc_col(html_div("One of two columns"), width = 4),
        ],
        justify = "start",
    ),
    dbc_row(
        [
            dbc_col(html_div("One of two columns"), width = 4),
            dbc_col(html_div("One of two columns"), width = 4),
        ],
        justify = "center",
    ),
    dbc_row(
        [
            dbc_col(html_div("One of two columns"), width = 4),
            dbc_col(html_div("One of two columns"), width = 4),
        ],
        justify = "end",
    ),
    dbc_row(
        [
            dbc_col(html_div("One of two columns"), width = 4),
            dbc_col(html_div("One of two columns"), width = 4),
        ],
        justify = "between",
    ),
    dbc_row(
        [
            dbc_col(html_div("One of two columns"), width = 4),
            dbc_col(html_div("One of two columns"), width = 4),
        ],
        justify = "around",
    ),
]);
