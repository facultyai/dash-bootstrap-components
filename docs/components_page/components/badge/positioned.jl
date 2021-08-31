using DashBootstrapComponents

badge = dbc_button(
    [
        "Notifications",
        dbc_badge(
            "99+",
            color = "danger",
            pill = true,
            text_color = "white",
            class_name = "position-absolute top-0 start-100 translate-middle",
        ),
    ],
    color = "primary",
    class_name = "position-relative",
)
