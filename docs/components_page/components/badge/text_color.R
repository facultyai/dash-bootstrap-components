library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", color = "white", text_color = "primary", className = "border me-1"),
    dbcBadge("Secondary", color = "white", text_color = "secondary", className = "border me-1"),
    dbcBadge("Success", color = "white", text_color = "success", className = "border me-1"),
    dbcBadge("Warning", color = "white", text_color = "warning", className = "border me-1"),
    dbcBadge("Danger", color = "white", text_color = "danger", className = "border me-1"),
    dbcBadge("Info", color = "white", text_color = "info", className = "border me-1"),
    dbcBadge("Dark", color = "white", text_color = "dark", className = "border me-1"),
    dbcBadge("Black", color = "white", text_color = "black", className = "border me-1"),
    dbcBadge("Muted", color = "white", text_color = "muted", className = "border me-1"),
    dbcBadge("Light", color = "secondary", text_color = "light", className = "border me-1"),
    dbcBadge("White", color = "secondary", text_color = "white", className = "border")
  )
)
