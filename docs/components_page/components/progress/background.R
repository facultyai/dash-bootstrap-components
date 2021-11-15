library(dashBootstrapComponents)

progress <- div(
  list(
    dbcProgress(value = 25, color = "success", className = "mb-3"),
    dbcProgress(value = 50, color = "warning", className = "mb-3"),
    dbcProgress(value = 75, color = "danger", className = "mb-3"),
    dbcProgress(value = 100, color = "info")
  )
)
