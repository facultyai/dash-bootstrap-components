using DashBootstrapComponents, DashHtmlComponents

badges = html_span([
    dbc_badge(
        "Primary",
        color = "white",
        text_color = "primary",
        class_name = "border me-1",
    ),
    dbc_badge(
        "Secondary",
        color = "white",
        text_color = "secondary",
        class_name = "border me-1",
    ),
    dbc_badge(
        "Success",
        color = "white",
        text_color = "success",
        class_name = "border me-1",
    ),
    dbc_badge(
        "Warning",
        color = "white",
        text_color = "warning",
        class_name = "border me-1",
    ),
    dbc_badge("Danger", color = "white", text_color = "danger", class_name = "border me-1"),
    dbc_badge("Info", color = "white", text_color = "info", class_name = "border me-1"),
    dbc_badge("Dark", color = "white", text_color = "dark", class_name = "border me-1"),
    dbc_badge("Black", color = "white", text_color = "black", class_name = "border me-1"),
    dbc_badge("Muted", color = "white", text_color = "muted", class_name = "border me-1"),
    dbc_badge(
        "Light",
        color = "secondary",
        text_color = "light",
        class_name = "border me-1",
    ),
    dbc_badge("White", color = "secondary", text_color = "white", class_name = "border"),
])
