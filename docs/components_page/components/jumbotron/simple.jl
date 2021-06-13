using DashBootstrapComponents, DashHtmlComponents

jumbotron = dbc_jumbotron([
    html_h1("Jumbotron", className="display-3"),
    html_p(
        "Use a jumbotron to call attention to " * "featured content or information.",
        className="lead",
    ),
    html_hr(className="my-2"),
    html_p(
        "Jumbotrons use utility classes for typography and " *
        "spacing to suit the larger container.",
    ),
    html_p(dbc_button("Learn more", color="primary"), className="lead"),
]);
