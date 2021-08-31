library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", href = "#", color = "primary", class_name = "me-1 text-decoration-none"),
    dbcBadge("Secondary", href = "#", color = "secondary", class_name = "me-1 text-decoration-none"),
    dbcBadge("Success", href = "#", color = "success", class_name = "me-1 text-decoration-none"),
    dbcBadge("Warning", href = "#", color = "warning", class_name = "me-1 text-decoration-none"),
    dbcBadge("Danger", href = "#", color = "danger", class_name = "me-1 text-decoration-none"),
    dbcBadge("Info", href = "#", color = "info", class_name = "me-1 text-decoration-none"),
    dbcBadge("Light", href = "#", color = "light", text_color = "dark", class_name = "me-1 text-decoration-none"),
    dbcBadge("Dark", href = "#", color = "dark", class_name = "text-decoration-none")
  )
)
