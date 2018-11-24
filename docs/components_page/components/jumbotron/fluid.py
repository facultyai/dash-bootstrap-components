import dash_bootstrap_components as dbc
import dash_html_components as html

jumbotron = dbc.Jumbotron(
    [
        dbc.Container(
            [
                html.H1("Fluid jumbotron", className="display-3"),
                html.P(
                    "This jumbotron occupies the entire horizontal "
                    "space of its parent.",
                    className="lead",
                ),
                html.P(
                    "You will need to embed a fluid container in "
                    "the jumbotron.",
                    className="lead",
                ),
            ],
            fluid=True,
        )
    ],
    fluid=True,
)
