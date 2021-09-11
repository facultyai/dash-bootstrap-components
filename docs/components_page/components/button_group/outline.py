import dash_bootstrap_components as dbc

button_group = dbc.ButtonGroup(
    [
        dbc.Button("Left", outline=True, color="primary"),
        dbc.Button("Middle", outline=True, color="primary"),
        dbc.Button("Right", outline=True, color="primary"),
    ]
)
