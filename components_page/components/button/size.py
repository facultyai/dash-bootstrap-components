import dash_bootstrap_components as dbc
import dash_html_components as html

varying_size_buttons = html.Div(
    [
        dbc.Button("Large button", size="lg", className="mr-1"),
        dbc.Button("Regular button", className="mr-1"),
        dbc.Button("Small button", size="sm"),
    ]
)
