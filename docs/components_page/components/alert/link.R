library(dashBootstrapComponents)
library(dashHtmlComponents)

alerts <- htmlDiv(
  list(
    dbcAlert(
      list(
        "This is a primary alert with an ",
        htmlA("example link", href = "#", class_name = "alert-link")
      ),
      color = "primary"
    ),
    dbcAlert(
      list(
        "This is a danger alert with an ",
        htmlA("example link", href = "#", class_name = "alert-link")
      ),
      color = "danger"
    )
  )
)
