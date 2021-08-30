using DashBootstrapComponents

badge = dbc_button(
    [
        "Notifications",
        dbc_badge(
            "99+",
            color = "danger",
            pill = true,
            class_name = "text-white " *
                         "position-absolute top-0 start-100 translate-middle",
        ),
    ],
    color = "primary",
    class_name = "position-relative",
)
