import dash_bootstrap_components as dbc
import dash_html_components as html

alerts = html.Div(
    [
        dbc.Alert("This is an alert", color="primary"),
        dbc.Alert("Danger!", color="danger"),
    ]
)
