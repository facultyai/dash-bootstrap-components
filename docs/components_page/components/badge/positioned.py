import dash_bootstrap_components as dbc

badge = dbc.Button(
    [
        "Notifications",
        dbc.Badge(
            "99+",
            color="danger",
            pill=True,
            text_color="white",
            class_name="position-absolute top-0 start-100 translate-middle",
        ),
    ],
    color="primary",
    class_name="position-relative",
)
