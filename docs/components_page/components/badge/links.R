library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", href = "#", color = "primary", className = "me-1 text-decoration-none"),
    dbcBadge("Secondary", href = "#", color = "secondary", className = "me-1 text-decoration-none"),
    dbcBadge("Success", href = "#", color = "success", className = "me-1 text-decoration-none"),
    dbcBadge("Warning", href = "#", color = "warning", className = "me-1 text-decoration-none"),
    dbcBadge("Danger", href = "#", color = "danger", className = "me-1 text-decoration-none"),
    dbcBadge("Info", href = "#", color = "info", className = "me-1 text-decoration-none"),
    dbcBadge("Light", href = "#", color = "light", text_color = "dark", className = "me-1 text-decoration-none"),
    dbcBadge("Dark", href = "#", color = "dark", className = "text-decoration-none")
  )
)
