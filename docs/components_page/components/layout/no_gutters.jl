using DashBootstrapComponents, DashHtmlComponents

row = dbc_row(
    [
        dbc_col(html_div("One of three columns")),
        dbc_col(html_div("One of three columns")),
        dbc_col(html_div("One of three columns")),
    ],
    className = "g-0",
);
