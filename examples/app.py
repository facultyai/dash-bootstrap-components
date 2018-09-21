import dash
import dash_bootstrap_components as dbc
import dash_html_components as html

app = dash.Dash()

alerts = html.Div(
    [
        html.H2("Alerts"),
        dbc.Alert("This is an alert", color="primary"),
        dbc.Alert("Danger!", color="danger"),
    ]
)

badges = html.Div(
    [
        html.H2("Badges"),
        html.H3(
            [
                "This is a heading with a badge!",
                dbc.Badge("New!", color="success"),
            ]
        ),
    ]
)

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
        html.Br(),
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
        html.Br(),
        html.H4("Button group"),
        html.Div(
            dbc.ButtonGroup(
                [
                    dbc.Button("Primary", color="primary"),
                    dbc.Button("Secondary", color="secondary"),
                    dbc.Button("Success", color="success"),
                    dbc.Button("Warning", color="warning"),
                    dbc.Button("Danger", color="danger"),
                    dbc.Button("Info", color="info"),
                ]
            )
        ),
    ]
)

app.layout = html.Div([alerts, badges, buttons])


if __name__ == "__main__":
    app.run_server(port=8888)
