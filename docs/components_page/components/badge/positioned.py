import dash_bootstrap_components as dbc

badge = dbc.Button(
    [
        "Notifications",
        dbc.Badge(
            "99+",
            color="danger",
            pill=True,
            text_color="white",
            className="position-absolute top-0 start-100 translate-middle",
        ),
    ],
    color="primary",
    className="position-relative",
)
