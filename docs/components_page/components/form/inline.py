import dash_bootstrap_components as dbc

form = dbc.Form(
    dbc.Row(
        [
            dbc.Label("Email", width="auto"),
            dbc.Col(
                dbc.Input(type="email", placeholder="Enter email"),
                class_name="me-3",
            ),
            dbc.Label("Password", width="auto"),
            dbc.Col(
                dbc.Input(type="password", placeholder="Enter password"),
                class_name="me-3",
            ),
            dbc.Col(dbc.Button("Submit", color="primary"), width="auto"),
        ],
        class_name="g-2",
    )
)
