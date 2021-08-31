library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", color = "white", text_color = "primary", class_name = "border me-1"),
    dbcBadge("Secondary", color = "white", text_color = "secondary", class_name = "border me-1"),
    dbcBadge("Success", color = "white", text_color = "success", class_name = "border me-1"),
    dbcBadge("Warning", color = "white", text_color = "warning", class_name = "border me-1"),
    dbcBadge("Danger", color = "white", text_color = "danger", class_name = "border me-1"),
    dbcBadge("Info", color = "white", text_color = "info", class_name = "border me-1"),
    dbcBadge("Dark", color = "white", text_color = "dark", class_name = "border me-1"),
    dbcBadge("Black", color = "white", text_color = "black", class_name = "border me-1"),
    dbcBadge("Muted", color = "white", text_color = "muted", class_name = "border me-1"),
    dbcBadge("Light", color = "secondary", text_color = "light", class_name = "border me-1"),
    dbcBadge("White", color = "secondary", text_color = "white", class_name = "border")
  )
)
