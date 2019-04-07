import dash_bootstrap_components as dbc
import dash_html_components as html

buttons = html.Div(
    [
        dbc.Button("Primary", outline=True, color="primary", className="mr-1"),
        dbc.Button(
            "Secondary", outline=True, color="secondary", className="mr-1"
        ),
        dbc.Button("Success", outline=True, color="success", className="mr-1"),
        dbc.Button("Warning", outline=True, color="warning", className="mr-1"),
        dbc.Button("Danger", outline=True, color="danger", className="mr-1"),
        dbc.Button("Info", outline=True, color="info", className="mr-1"),
        dbc.Button("Light", outline=True, color="light", className="mr-1"),
        dbc.Button("Dark", outline=True, color="dark"),
    ]
)
