import dash_bootstrap_components as dbc

badge = dbc.Button(
    [
        "Notifications",
        dbc.Badge("4", color="light", class_name="ms-1 text-primary"),
    ],
    color="primary",
)
