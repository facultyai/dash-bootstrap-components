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

app.layout = html.Div([alerts, badges])


if __name__ == "__main__":
    app.run_server(port=8888)