library(dashBootstrapComponents)
library(dashHtmlComponents)

coloured_badges <- htmlSpan(
  list(
    dbcBadge("Primary", color = "primary", className = "mr-1"),
    dbcBadge("Secondary", color = "secondary", className = "mr-1"),
    dbcBadge("Success", color = "success", className = "mr-1"),
    dbcBadge("Warning", color = "warning", className = "mr-1"),
    dbcBadge("Danger", color = "danger", className = "mr-1"),
    dbcBadge("Info", color = "info", className = "mr-1"),
    dbcBadge("Light", color = "light", className = "mr-1"),
    dbcBadge("Dark", color = "dark")
  )
)
