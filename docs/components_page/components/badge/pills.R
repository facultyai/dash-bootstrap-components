library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlSpan(
  list(
    dbcBadge("Primary", pill = TRUE, color = "primary", class_name = "me-1"),
    dbcBadge("Secondary", pill = TRUE, color = "secondary", class_name = "me-1"),
    dbcBadge("Success", pill = TRUE, color = "success", class_name = "me-1"),
    dbcBadge("Warning", pill = TRUE, color = "warning", class_name = "me-1"),
    dbcBadge("Danger", pill = TRUE, color = "danger", class_name = "me-1"),
    dbcBadge("Info", pill = TRUE, color = "info", class_name = "me-1"),
    dbcBadge("Light", pill = TRUE, color = "light", text_color = "dark", class_name = "me-1"),
    dbcBadge("Dark", pill = TRUE, color = "dark")
  )
)
