import dash_bootstrap_components as dbc
import dash_html_components as html

badges = html.Span(
    [
        dbc.Badge("Primary", href="#", color="primary", className="mr-1"),
        dbc.Badge("Secondary", href="#", color="secondary", className="mr-1"),
        dbc.Badge("Success", href="#", color="success", className="mr-1"),
        dbc.Badge("Warning", href="#", color="warning", className="mr-1"),
        dbc.Badge("Danger", href="#", color="danger", className="mr-1"),
        dbc.Badge("Info", href="#", color="info", className="mr-1"),
        dbc.Badge("Light", href="#", color="light", className="mr-1"),
        dbc.Badge("Dark", href="#", color="dark"),
    ]
)
