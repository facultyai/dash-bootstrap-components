import dash_html_components as html
import dash_bootstrap_components as dbc

input_group = html.Div(
    [
        html.H2("Input group"),
        html.Div(
            [
                dbc.InputGroup(
                    [
                        dbc.InputGroupAddon("@", addon_type="prepend"),
                        dbc.Input(placeholder="username"),
                    ]
                ),
                html.Br(),
                dbc.InputGroup(
                    [
                        dbc.Input(placeholder="username"),
                        dbc.InputGroupAddon("@example.com", addon_type="append"),
                    ]
                )

            ]
        )
    ]
)
