using DashBootstrapComponents, DashHtmlComponents

fluid_jumbotron = dbc_jumbotron(
    [
        dbc_container(
            [
                html_h1("Fluid jumbotron", className="display-3"),
                html_p(
                    "This jumbotron occupies the entire horizontal " *
                    "space of its parent.",
                    className="lead",
                ),
                html_p(
                    "You will need to embed a fluid container in " * "the jumbotron.",
                    className="lead",
                ),
            ],
            fluid=true,
        ),
    ],
    fluid=true,
);
