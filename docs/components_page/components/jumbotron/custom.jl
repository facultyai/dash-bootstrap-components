using DashBootstrapComponents

left_jumbotron = dbc_col(
    html_div(
        [
            html_h2("Change the background", className = "display-3"),
            html_hr(className = "my-2"),
            html_p(
                "Swap the background-color utility and add a `.text-*` color " *
                "utility to mix up the look.",
            ),
            dbc_button("Example Button", color = "light", outline = true),
        ],
        className = "h-100 p-5 text-white bg-dark rounded-3",
    ),
    md = 6,
)

right_jumbotron = dbc_col(
    html_div(
        [
            html_h2("Add borders", className = "display-3"),
            html_hr(className = "my-2"),
            html_p(
                "Or, keep it light and add a border for some added definition " *
                "to the boundaries of your content.",
            ),
            dbc_button("Example Button", color = "secondary", outline = true),
        ],
        className = "h-100 p-5 bg-light border rounded-3",
    ),
    md = 6,
)

jumbotron = dbc_row([left_jumbotron, right_jumbotron], className = "align-items-md-stretch")
