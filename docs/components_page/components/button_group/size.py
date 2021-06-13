import dash_bootstrap_components as dbc
import dash_html_components as html

varying_size_button_groups = html.Div(
    [
        dbc.ButtonGroup(
            [dbc.Button("Left"), dbc.Button("Middle"), dbc.Button("Right")],
            size="lg",
            className="mr-1",
        ),
        dbc.ButtonGroup(
            [dbc.Button("Left"), dbc.Button("Middle"), dbc.Button("Right")],
            size="md",
            className="mr-1",
        ),
        dbc.ButtonGroup(
            [dbc.Button("Left"), dbc.Button("Middle"), dbc.Button("Right")],
            size="sm",
        ),
    ]
)
