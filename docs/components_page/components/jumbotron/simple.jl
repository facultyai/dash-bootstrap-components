using DashBootstrapComponents, DashHtmlComponents

jumbotron = html_div(
    dbc_container(
        [
            html_h1("Jumbotron", class_name="display-3"),
            html_p(
                "Use Containers to create a jumbotron to call attention to " *
                "featured content or information.",
                class_name="lead",
            ),
            html_hr(class_name="my-2"),
            html_p(
                "Use utility classes for typography and spacing to suit the " *
                "larger container."
            ),
            html_p(
                dbc.Button("Learn more", color="primary"), class_name="lead"
            ),
        ],
        fluid=true,
        class_name="py-3",
    ),
    class_name="p-3 bg-light rounded-3",
)
