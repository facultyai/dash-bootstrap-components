import dash_bootstrap_components as dbc

button_group = dbc.ButtonGroup(
    [
        dbc.Button("Left", color="danger"),
        dbc.Button("Middle", color="warning"),
        dbc.Button("Right", color="success"),
    ]
)
