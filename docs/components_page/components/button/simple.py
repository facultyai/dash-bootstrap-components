import dash_bootstrap_components as dbc
import dash_html_components as html

buttons = html.Div(
    [
        dbc.Button("Primary", color="primary", class_name="mr-1"),
        dbc.Button("Secondary", color="secondary", class_name="mr-1"),
        dbc.Button("Success", color="success", class_name="mr-1"),
        dbc.Button("Warning", color="warning", class_name="mr-1"),
        dbc.Button("Danger", color="danger", class_name="mr-1"),
        dbc.Button("Info", color="info", class_name="mr-1"),
        dbc.Button("Light", color="light", class_name="mr-1"),
        dbc.Button("Dark", color="dark", class_name="mr-1"),
        dbc.Button("Link", color="link"),
    ]
)
