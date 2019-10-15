import dash_bootstrap_components as dbc
import dash_html_components as html

input_groups = html.Div(
    [
        dbc.InputGroup(
            [
                dbc.InputGroupAddon(dbc.RadioButton(), addon_type="prepend"),
                dbc.Input(),
            ],
            className="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.InputGroupAddon(dbc.Checkbox(), addon_type="prepend"),
                dbc.Input(),
            ]
        ),
    ]
)
