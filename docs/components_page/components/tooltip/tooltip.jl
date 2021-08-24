using DashBootstrapComponents, DashHtmlComponents

tooltip = html_div([
    html_p([
        "I wonder what ",
        html_span(
            "floccinaucinihilipilification",
            id = "tooltip-target",
            style = Dict("textDecoration" => "underline", "cursor" => "pointer"),
        ),
        " means?",
    ]),
    dbc_tooltip(
        "Noun: rare, " * "the action or habit of estimating something as worthless.",
        target = "tooltip-target",
    ),
]);
