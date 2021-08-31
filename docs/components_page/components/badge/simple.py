import dash_bootstrap_components as dbc

badge = dbc.Button(
    [
        "Notifications",
        dbc.Badge("4", color="light", text_color="primary", class_name="ms-1"),
    ],
    color="primary",
)
