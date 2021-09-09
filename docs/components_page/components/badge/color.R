library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", color = "primary", className = "me-1"),
    dbcBadge("Secondary", color = "secondary", className = "me-1"),
    dbcBadge("Success", color = "success", className = "me-1"),
    dbcBadge("Warning", color = "warning", className = "me-1"),
    dbcBadge("Danger", color = "danger", className = "me-1"),
    dbcBadge("Info", color = "info", className = "me-1"),
    dbcBadge("Light", text_color = "dark", color = "light", className = "me-1"),
    dbcBadge("Dark", color = "dark")
  )
)
