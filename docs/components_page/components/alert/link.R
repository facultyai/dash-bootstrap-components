library(dashBootstrapComponents)

alerts <- div(
  list(
    dbcAlert(
      list(
        "This is a primary alert with an ",
        a("example link", href = "#", className = "alert-link")
      ),
      color = "primary"
    ),
    dbcAlert(
      list(
        "This is a danger alert with an ",
        a("example link", href = "#", className = "alert-link")
      ),
      color = "danger"
    )
  )
)
