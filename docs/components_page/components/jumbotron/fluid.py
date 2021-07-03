import dash_bootstrap_components as dbc
import dash_html_components as html

fluid_jumbotron = dbc.Jumbotron(
    [
        dbc.Container(
            [
                html.H1("Fluid jumbotron", class_name="display-3"),
                html.P(
                    "This jumbotron occupies the entire horizontal "
                    "space of its parent.",
                    class_name="lead",
                ),
                html.P(
                    "You will need to embed a fluid container in "
                    "the jumbotron.",
                    class_name="lead",
                ),
            ],
            fluid=True,
        )
    ],
    fluid=True,
)
