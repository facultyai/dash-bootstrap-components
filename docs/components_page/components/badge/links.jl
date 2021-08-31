using DashBootstrapComponents, DashHtmlComponents

badges = html_span([
    dbc_badge(
        "Primary",
        href = "#",
        color = "primary",
        class_name = "me-1 text-decoration-none",
    ),
    dbc_badge(
        "Secondary",
        href = "#",
        color = "secondary",
        class_name = "me-1 text-decoration-none",
    ),
    dbc_badge(
        "Success",
        href = "#",
        color = "success",
        class_name = "me-1 text-decoration-none",
    ),
    dbc_badge(
        "Warning",
        href = "#",
        color = "warning",
        class_name = "me-1 text-decoration-none",
    ),
    dbc_badge(
        "Danger",
        href = "#",
        color = "danger",
        class_name = "me-1 text-decoration-none",
    ),
    dbc_badge("Info", href = "#", color = "info", class_name = "me-1 text-decoration-none"),
    dbc_badge(
        "Light",
        href = "#",
        color = "light",
        text_color = "dark",
        class_name = "me-1 text-decoration-none",
    ),
    dbc_badge("Dark", href = "#", color = "dark", class_name = "text-decoration-none"),
],);
