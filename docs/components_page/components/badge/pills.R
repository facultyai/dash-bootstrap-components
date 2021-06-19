library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", pill = TRUE, color = "primary", className = "mr-1"),
    dbcBadge("Secondary", pill = TRUE, color = "secondary", className = "mr-1"),
    dbcBadge("Success", pill = TRUE, color = "success", className = "mr-1"),
    dbcBadge("Warning", pill = TRUE, color = "warning", className = "mr-1"),
    dbcBadge("Danger", pill = TRUE, color = "danger", className = "mr-1"),
    dbcBadge("Info", pill = TRUE, color = "info", className = "mr-1"),
    dbcBadge("Light", pill = TRUE, color = "light", className = "mr-1"),
    dbcBadge("Dark", pill = TRUE, color = "dark")
  )
)
