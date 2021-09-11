using DashBootstrapComponents, DashHtmlComponents

badges = html_span([
    dbc_badge(
        "Primary",
        href = "#",
        color = "primary",
        className = "me-1 text-decoration-none",
    ),
    dbc_badge(
        "Secondary",
        href = "#",
        color = "secondary",
        className = "me-1 text-decoration-none",
    ),
    dbc_badge(
        "Success",
        href = "#",
        color = "success",
        className = "me-1 text-decoration-none",
    ),
    dbc_badge(
        "Warning",
        href = "#",
        color = "warning",
        className = "me-1 text-decoration-none",
    ),
    dbc_badge(
        "Danger",
        href = "#",
        color = "danger",
        className = "me-1 text-decoration-none",
    ),
    dbc_badge("Info", href = "#", color = "info", className = "me-1 text-decoration-none"),
    dbc_badge(
        "Light",
        href = "#",
        color = "light",
        text_color = "dark",
        className = "me-1 text-decoration-none",
    ),
    dbc_badge("Dark", href = "#", color = "dark", className = "text-decoration-none"),
],);
