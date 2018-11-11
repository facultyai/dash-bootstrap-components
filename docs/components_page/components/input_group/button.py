import dash_html_components as html
import dash_bootstrap_components as dbc

input_group = html.Div(
    [
        html.H4("Buttons"),
        html.Div(
            [
                dbc.InputGroup(
                    [
                        dbc.InputGroupAddon(
                            dbc.Button("Button text"),
                            addon_type="prepend"
                        ),
                        dbc.Input()
                    ]
                )
            ]
        )
    ]
)
