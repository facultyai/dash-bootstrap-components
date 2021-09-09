using DashBootstrapComponents, DashHtmlComponents

alerts = html_div([
    dbc_alert(
        [
            html_i(className = "bi bi-info-circle-fill me-2"),
            "An example info alert with an icon",
        ],
        color = "info",
        className = "d-flex align-items-center",
    ),
    dbc_alert(
        [
            html_i(className = "bi bi-check-circle-fill me-2"),
            "An example success alert with an icon",
        ],
        color = "success",
        className = "d-flex align-items-center",
    ),
    dbc_alert(
        [
            html_i(className = "bi bi-exclamation-triangle-fill me-2"),
            "An example warning alert with an icon",
        ],
        color = "warning",
        className = "d-flex align-items-center",
    ),
    dbc_alert(
        [
            html_i(className = "bi bi-x-octagon-fill me-2"),
            "An example danger alert with an icon",
        ],
        color = "danger",
        className = "d-flex align-items-center",
    ),
])
