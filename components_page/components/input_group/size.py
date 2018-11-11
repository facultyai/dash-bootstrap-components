import dash_html_components as html
import dash_bootstrap_components as dbc

input_group = html.Div(
    [
        html.H4("Addon sizing"),
        html.Div(
            [
                dbc.InputGroup(
                    [
                        dbc.InputGroupAddon("@lg", addon_type="prepend"),
                        dbc.Input()
                    ],
                    size="lg"
                ),
                html.Br(),
                dbc.InputGroup(
                    [
                        dbc.InputGroupAddon("@normal", addon_type="prepend"),
                        dbc.Input()
                    ]
                ),
                html.Br(),
                dbc.InputGroup(
                    [
                        dbc.InputGroupAddon("@sm", addon_type="prepend"),
                        dbc.Input()
                    ],
                    size="sm"
                ),
            ]
        )
    ]
)
