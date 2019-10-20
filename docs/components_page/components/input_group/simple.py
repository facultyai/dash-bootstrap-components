import dash_bootstrap_components as dbc
import dash_html_components as html

input_groups = html.Div(
    [
        dbc.InputGroup(
            [
                dbc.InputGroupAddon("@", addon_type="prepend"),
                dbc.Input(placeholder="Username"),
            ],
            className="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.Input(placeholder="Recipient's username"),
                dbc.InputGroupAddon("@example.com", addon_type="append"),
            ],
            className="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.InputGroupAddon("$", addon_type="prepend"),
                dbc.Input(placeholder="Amount", type="number"),
                dbc.InputGroupAddon(".00", addon_type="append"),
            ],
            className="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.InputGroupAddon("With textarea", addon_type="prepend"),
                dbc.Textarea(),
            ],
            className="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.Select(
                    options=[
                        {"label": "Option 1", "value": 1},
                        {"label": "Option 2", "value": 2},
                    ]
                ),
                dbc.InputGroupAddon("With select", addon_type="append"),
            ]
        ),
    ]
)
