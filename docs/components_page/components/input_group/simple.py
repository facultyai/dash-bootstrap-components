import dash_bootstrap_components as dbc
import dash_html_components as html

input_groups = html.Div(
    [
        dbc.InputGroup(
            [dbc.InputGroupText("@"), dbc.Input(placeholder="Username")],
            class_name="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.Input(placeholder="Recipient's username"),
                dbc.InputGroupText("@example.com"),
            ],
            class_name="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.InputGroupText("$"),
                dbc.Input(placeholder="Amount", type="number"),
                dbc.InputGroupText(".00"),
            ],
            class_name="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.InputGroupText("With textarea"),
                dbc.Textarea(),
            ],
            class_name="mb-3",
        ),
        dbc.InputGroup(
            [
                dbc.Select(
                    options=[
                        {"label": "Option 1", "value": 1},
                        {"label": "Option 2", "value": 2},
                    ]
                ),
                dbc.InputGroupText("With select"),
            ]
        ),
    ]
)
