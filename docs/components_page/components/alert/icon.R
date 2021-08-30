library(dashBootstrapComponents)
library(dashHtmlComponents)

alerts <- htmlDiv(
    list(
        dbcAlert(
            list(
                htmlI(class_name="bi bi-info-circle-fill me-2"),
                "An example info alert with an icon"
            ),
            color="info",
            class_name="d-flex align-items-center"
        ),
        dbcAlert(
            list(
                htmlI(class_name="bi bi-check-circle-fill me-2"),
                "An example success alert with an icon"
            ),
            color="success",
            class_name="d-flex align-items-center"
        ),
        dbcAlert(
            list(
                htmlI(class_name="bi bi-exclamation-triangle-fill me-2"),
                "An example warning alert with an icon"
            ),
            color="warning",
            class_name="d-flex align-items-center"
        ),
        dbcAlert(
            list(
                htmlI(class_name="bi bi-x-octagon-fill me-2"),
                "An example danger alert with an icon"
            ),
            color="danger",
            class_name="d-flex align-items-center"
        )
    )
)
