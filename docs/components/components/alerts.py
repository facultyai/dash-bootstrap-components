import dash_html_components as html
import dash_bootstrap_components as dbc

alerts = html.Div(
    [
        html.H2("Alerts"),
        dbc.Alert("This is an alert", color="primary"),
        dbc.Alert("Danger!", color="danger"),
    ]
)
