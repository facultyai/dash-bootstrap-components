using DashBootstrapComponents, DashHtmlComponents

fluid_jumbotron = dbc_jumbotron(
    [
        dbc_container(
            [
                html_h1("Fluid jumbotron", class_name="display-3"),
                html_p(
                    "This jumbotron occupies the entire horizontal " *
                    "space of its parent.",
                    class_name="lead",
                ),
                html_p(
                    "You will need to embed a fluid container in " * "the jumbotron.",
                    class_name="lead",
                ),
            ],
            fluid=true,
        ),
    ],
    fluid=true,
);
