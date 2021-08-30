using DashBootstrapComponents, DashHtmlComponents

alerts = html_div([
    dbc_alert(
        [
            html_i(class_name = "bi bi-info-circle-fill me-2"),
            "An example info alert with an icon",
        ],
        color = "info",
        class_name = "d-flex align-items-center",
    ),
    dbc_alert(
        [
            html_i(class_name = "bi bi-check-circle-fill me-2"),
            "An example success alert with an icon",
        ],
        color = "success",
        class_name = "d-flex align-items-center",
    ),
    dbc_alert(
        [
            html_i(class_name = "bi bi-exclamation-triangle-fill me-2"),
            "An example warning alert with an icon",
        ],
        color = "warning",
        class_name = "d-flex align-items-center",
    ),
    dbc_alert(
        [
            html_i(class_name = "bi bi-x-octagon-fill me-2"),
            "An example danger alert with an icon",
        ],
        color = "danger",
        class_name = "d-flex align-items-center",
    ),
])
