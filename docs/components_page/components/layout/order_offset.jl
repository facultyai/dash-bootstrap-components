using DashBootstrapComponents, DashHtmlComponents

row = html_div([
    dbc_row(
        dbc_col(
            html_div("A single, half-width column"),
            width = Dict("size" => 6, "offset" => 3),
        ),
    ),
    dbc_row([
        dbc_col(
            html_div("The last of three columns"),
            width = Dict("size" => 3, "order" => "last", "offset" => 1),
        ),
        dbc_col(
            html_div("The first of three columns"),
            width = Dict("size" => 3, "order" => 1, "offset" => 2),
        ),
        dbc_col(
            html_div("The second of three columns"),
            width = Dict("size" => 3, "order" => 5),
        ),
    ]),
]);
