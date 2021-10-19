using DashBootstrapComponents, DashHtmlComponents

alerts = html_div([
    dbc_alert(
        [
            "This is a primary alert with an ",
            html_a("example link", href = "#", className = "alert-link"),
        ],
        color = "primary",
    ),
    dbc_alert(
        [
            "This is a danger alert with an ",
            html_a("example link", href = "#", className = "alert-link"),
        ],
        color = "danger",
    ),
]);
