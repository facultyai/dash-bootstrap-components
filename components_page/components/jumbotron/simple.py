import dash_bootstrap_components as dbc
import dash_html_components as html

simple_jumbotron = dbc.Jumbotron(
    [
        html.H1("Jumbotron", class_name="display-3"),
        html.P(
            "Use a jumbotron to call attention to "
            "featured content or information.",
            class_name="lead",
        ),
        html.Hr(class_name="my-2"),
        html.P(
            "Jumbotrons use utility classes for typography and "
            "spacing to suit the larger container."
        ),
        html.P(dbc.Button("Learn more", color="primary"), class_name="lead"),
    ]
)
