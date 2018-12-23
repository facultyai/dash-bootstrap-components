import dash_bootstrap_components as dbc

text_input = dbc.FormGroup(
    [
        dbc.Label("Text"),
        dbc.Input(placeholder="Input goes here...", type="text"),
        dbc.FormText("Type something in the box above"),
    ]
)
