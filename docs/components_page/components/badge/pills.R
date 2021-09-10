library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", pill = TRUE, color = "primary", className = "me-1"),
    dbcBadge("Secondary", pill = TRUE, color = "secondary", className = "me-1"),
    dbcBadge("Success", pill = TRUE, color = "success", className = "me-1"),
    dbcBadge("Warning", pill = TRUE, color = "warning", className = "me-1"),
    dbcBadge("Danger", pill = TRUE, color = "danger", className = "me-1"),
    dbcBadge("Info", pill = TRUE, color = "info", className = "me-1"),
    dbcBadge("Light", pill = TRUE, color = "light", text_color = "dark", className = "me-1"),
    dbcBadge("Dark", pill = TRUE, color = "dark")
  )
)
