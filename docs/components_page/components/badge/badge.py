import dash_bootstrap_components as dbc
import dash_html_components as html

badges = html.H3(
    ["This is a heading with a badge! ", dbc.Badge("New!", color="success")]
)
