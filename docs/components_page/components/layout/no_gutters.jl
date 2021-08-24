using DashBootstrapComponents, DashHtmlComponents

row = dbc_row(
    [
        dbc_col(html_div("One of three columns")),
        dbc_col(html_div("One of three columns")),
        dbc_col(html_div("One of three columns")),
    ],
    class_name="g-0",
);
