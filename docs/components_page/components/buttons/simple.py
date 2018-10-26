import dash_html_components as html
import dash_bootstrap_components as dbc

buttons = html.Div(
    [
        html.H2("Buttons"),
        html.Div(
            [
                dbc.Button("Primary", color="primary"),
                " ",
                dbc.Button("Secondary", color="secondary"),
                " ",
                dbc.Button("Success", color="success"),
                " ",
                dbc.Button("Warning", color="warning"),
                " ",
                dbc.Button("Danger", color="danger"),
                " ",
                dbc.Button("Info", color="info"),
            ]
        ),
    ]
)
