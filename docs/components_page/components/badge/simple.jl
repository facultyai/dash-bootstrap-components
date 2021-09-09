using DashBootstrapComponents

badge = dbc_button(
    [
        "Notifications",
        dbc_badge("4", color = "light", text_color = "primary", className = "ms-1"),
    ],
    color = "primary",
);
