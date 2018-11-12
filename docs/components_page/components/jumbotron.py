import dash_html_components as html
import dash_bootstrap_components as dbc

jumbotron = html.Div(
    [
        html.H2("Jumbotron"),
        dbc.Jumbotron(
            [
                html.H1("Hello world", className="display-3"),
                html.P("Use a jumbotron to call attention to featured content or information.", className="lead"),
            ]
        )
    ]
)
