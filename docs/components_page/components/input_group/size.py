import dash_bootstrap_components as dbc
import dash_html_components as html

input_group = html.Div(
    [
        dbc.InputGroup(
            [dbc.InputGroupAddon("Large", addon_type="prepend"), dbc.Input()],
            size="lg",
        ),
        html.Br(),
        dbc.InputGroup(
            [dbc.InputGroupAddon("Default", addon_type="prepend"), dbc.Input()]
        ),
        html.Br(),
        dbc.InputGroup(
            [dbc.InputGroupAddon("Small", addon_type="prepend"), dbc.Input()],
            size="sm",
        ),
    ]
)
