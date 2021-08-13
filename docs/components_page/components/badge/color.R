library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", color = "primary", class_name = "mr-1"),
    dbcBadge("Secondary", color = "secondary", class_name = "mr-1"),
    dbcBadge("Success", color = "success", class_name = "mr-1"),
    dbcBadge("Warning", color = "warning", class_name = "mr-1"),
    dbcBadge("Danger", color = "danger", class_name = "mr-1"),
    dbcBadge("Info", color = "info", class_name = "mr-1"),
    dbcBadge("Light", color = "light", class_name = "mr-1"),
    dbcBadge("Dark", color = "dark")
  )
)
