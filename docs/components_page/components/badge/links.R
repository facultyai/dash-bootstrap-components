library(dashBootstrapComponents)
library(dashHtmlComponents)

linked_badges <- htmlSpan(
  list(
    dbcBadge("Primary", href = "#", color = "primary", className = "mr-1"),
    dbcBadge("Secondary", href = "#", color = "secondary", className = "mr-1"),
    dbcBadge("Success", href = "#", color = "success", className = "mr-1"),
    dbcBadge("Warning", href = "#", color = "warning", className = "mr-1"),
    dbcBadge("Danger", href = "#", color = "danger", className = "mr-1"),
    dbcBadge("Info", href = "#", color = "info", className = "mr-1"),
    dbcBadge("Light", href = "#", color = "light", className = "mr-1"),
    dbcBadge("Dark", href = "#", color = "dark")
  )
)
