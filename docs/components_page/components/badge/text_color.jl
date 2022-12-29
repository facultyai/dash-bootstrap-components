using DashBootstrapComponents

badges = html_span([
    dbc_badge(
        "Primary",
        color = "white",
        text_color = "primary",
        className = "border me-1",
    ),
    dbc_badge(
        "Secondary",
        color = "white",
        text_color = "secondary",
        className = "border me-1",
    ),
    dbc_badge(
        "Success",
        color = "white",
        text_color = "success",
        className = "border me-1",
    ),
    dbc_badge(
        "Warning",
        color = "white",
        text_color = "warning",
        className = "border me-1",
    ),
    dbc_badge("Danger", color = "white", text_color = "danger", className = "border me-1"),
    dbc_badge("Info", color = "white", text_color = "info", className = "border me-1"),
    dbc_badge("Dark", color = "white", text_color = "dark", className = "border me-1"),
    dbc_badge("Black", color = "white", text_color = "black", className = "border me-1"),
    dbc_badge("Muted", color = "white", text_color = "muted", className = "border me-1"),
    dbc_badge(
        "Light",
        color = "secondary",
        text_color = "light",
        className = "border me-1",
    ),
    dbc_badge("White", color = "secondary", text_color = "white", className = "border"),
])
