import dash_bootstrap_components as dbc
import dash_html_components as html

from .util import make_subheading

jumbotron = html.Div(
    [
        make_subheading("Jumbotron", "jumbotron"),
        dbc.Jumbotron(
            [
                html.H2("This is a jumbotron"),
                html.P("It makes things big..."),
                dbc.Button("Click here", color="danger"),
            ]
        ),
    ],
    className="mb-4",
)
