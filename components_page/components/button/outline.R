library(dashBootstrapComponents)
library(dashHtmlComponents)

buttons <- htmlDiv(
  list(
    dbcButton("Primary", outline = TRUE, color = "primary", class_name = "me-1"),
    dbcButton(
      "Secondary",
      outline = TRUE, color = "secondary", class_name = "me-1"
    ),
    dbcButton("Success", outline = TRUE, color = "success", class_name = "me-1"),
    dbcButton("Warning", outline = TRUE, color = "warning", class_name = "me-1"),
    dbcButton("Danger", outline = TRUE, color = "danger", class_name = "me-1"),
    dbcButton("Info", outline = TRUE, color = "info", class_name = "me-1"),
    dbcButton("Light", outline = TRUE, color = "light", class_name = "me-1"),
    dbcButton("Dark", outline = TRUE, color = "dark")
  )
)
