library(dashBootstrapComponents)
library(dashHtmlComponents)

progress <- htmlDiv(
  list(
    dbcProgress(value = 25, color = "success", class_name = "mb-3"),
    dbcProgress(value = 50, color = "warning", class_name = "mb-3"),
    dbcProgress(value = 75, color = "danger", class_name = "mb-3"),
    dbcProgress(value = 100, color = "info")
  )
)
