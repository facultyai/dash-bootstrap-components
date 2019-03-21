import dash_bootstrap_components as dbc
import dash_html_components as html

spinners = html.Div(
    [
        dbc.Spinner(color="primary", type="grow"),
        dbc.Spinner(color="secondary", type="grow"),
        dbc.Spinner(color="success", type="grow"),
        dbc.Spinner(color="warning", type="grow"),
        dbc.Spinner(color="danger", type="grow"),
        dbc.Spinner(color="info", type="grow"),
        dbc.Spinner(color="light", type="grow"),
        dbc.Spinner(color="dark", type="grow"),
    ]
)
