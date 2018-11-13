import dash_bootstrap_components as dbc
import dash_html_components as html

buttons = html.Div(
    [
        html.H4("Outline buttons"),
        html.Div(
            [
                dbc.Button("Primary", outline=True, color="primary"),
                " ",
                dbc.Button("Secondary", outline=True, color="secondary"),
                " ",
                dbc.Button("Success", outline=True, color="success"),
                " ",
                dbc.Button("Warning", outline=True, color="warning"),
                " ",
                dbc.Button("Danger", outline=True, color="danger"),
                " ",
                dbc.Button("Info", outline=True, color="info"),
            ]
        ),
    ]
)
