using DashBootstrapComponents, DashHtmlComponents

simple_jumbotron = dbc_jumbotron([
    html_h1("Jumbotron", class_name="display-3"),
    html_p(
        "Use a jumbotron to call attention to " * "featured content or information.",
        class_name="lead",
    ),
    html_hr(class_name="my-2"),
    html_p(
        "Jumbotrons use utility classes for typography and " *
        "spacing to suit the larger container.",
    ),
    html_p(dbc_button("Learn more", color="primary"), class_name="lead"),
]);
