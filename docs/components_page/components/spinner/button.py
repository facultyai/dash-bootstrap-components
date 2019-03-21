import dash_bootstrap_components as dbc
import dash_html_components as html

spinners = html.Div(
    [
        dbc.Button(
            dbc.Spinner(size="sm"),
            color="primary",
            disabled=True,
            className="mr-1",
        ),
        dbc.Button(
            [dbc.Spinner(size="sm"), " Loading..."],
            color="primary",
            disabled=True,
        ),
    ]
)
