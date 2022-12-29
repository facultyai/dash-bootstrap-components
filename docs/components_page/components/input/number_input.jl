using DashBootstrapComponents

number_input = html_div(
    [
        html_p("Type a number outside the range 0-10"),
        dbc_input(type = "number", min = 0, max = 10, step = 1),
    ],
    id = "styled-numeric-input",
);
