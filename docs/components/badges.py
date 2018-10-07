import dash_html_components as html
import dash_bootstrap_components as dbc

badges = html.Div(
    [
        html.H2("Badges"),
        html.H3(
            ["This is a heading with a badge!", dbc.Badge("New!", color="success")]
        ),
    ]
)
