import dash_bootstrap_components as dbc
from dash import html

jumbotron = html.Div(
    dbc.Container(
        [
            html.H1("Jumbotron", class_name="display-3"),
            html.P(
                "Use Containers to create a jumbotron to call attention to "
                "featured content or information.",
                class_name="lead",
            ),
            html.Hr(class_name="my-2"),
            html.P(
                "Use utility classes for typography and spacing to suit the "
                "larger container."
            ),
            html.P(
                dbc.Button("Learn more", color="primary"), class_name="lead"
            ),
        ],
        fluid=True,
        class_name="py-3",
    ),
    class_name="p-3 bg-light rounded-3",
)
