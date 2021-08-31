using DashBootstrapComponents

badge = dbc_button(
    [
        "Notifications",
        dbc_badge("4", color = "light", text_color = "primary", class_name = "ms-1"),
    ],
    color = "primary",
);
