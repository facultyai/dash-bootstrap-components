library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", color = "primary", class_name = "me-1"),
    dbcBadge("Secondary", color = "secondary", class_name = "me-1"),
    dbcBadge("Success", color = "success", class_name = "me-1"),
    dbcBadge("Warning", color = "warning", class_name = "me-1"),
    dbcBadge("Danger", color = "danger", class_name = "me-1"),
    dbcBadge("Info", color = "info", class_name = "me-1"),
    dbcBadge("Light", color = "light", class_name = "me-1"),
    dbcBadge("Dark", color = "dark")
  )
)
