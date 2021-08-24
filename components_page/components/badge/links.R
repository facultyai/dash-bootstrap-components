library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", href = "#", color = "primary", class_name = "me-1"),
    dbcBadge("Secondary", href = "#", color = "secondary", class_name = "me-1"),
    dbcBadge("Success", href = "#", color = "success", class_name = "me-1"),
    dbcBadge("Warning", href = "#", color = "warning", class_name = "me-1"),
    dbcBadge("Danger", href = "#", color = "danger", class_name = "me-1"),
    dbcBadge("Info", href = "#", color = "info", class_name = "me-1"),
    dbcBadge("Light", href = "#", color = "light", class_name = "me-1"),
    dbcBadge("Dark", href = "#", color = "dark")
  )
)
