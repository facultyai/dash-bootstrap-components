import dash_bootstrap_components as dbc
import dash_html_components as html

input_groups = html.Div(
    [
        dbc.InputGroup(
            [dbc.InputGroupText(dbc.RadioButton()), dbc.Input()],
            class_name="mb-3",
        ),
        dbc.InputGroup([dbc.InputGroupText(dbc.Checkbox()), dbc.Input()]),
    ]
)
