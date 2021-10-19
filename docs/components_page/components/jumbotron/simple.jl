using DashBootstrapComponents, DashHtmlComponents

jumbotron = html_div(
    dbc_container(
        [
            html_h1("Jumbotron", className = "display-3"),
            html_p(
                "Use Containers to create a jumbotron to call attention to " *
                "featured content or information.",
                className = "lead",
            ),
            html_hr(className = "my-2"),
            html_p(
                "Use utility classes for typography and spacing to suit the " *
                "larger container.",
            ),
            html_p(dbc_button("Learn more", color = "primary"), className = "lead"),
        ],
        fluid = true,
        className = "py-3",
    ),
    className = "p-3 bg-light rounded-3",
)
