library(dashBootstrapComponents)

buttons <- div(
  list(
    dbcButton("Primary", outline = TRUE, color = "primary", className = "me-1"),
    dbcButton(
      "Secondary",
      outline = TRUE, color = "secondary", className = "me-1"
    ),
    dbcButton("Success", outline = TRUE, color = "success", className = "me-1"),
    dbcButton("Warning", outline = TRUE, color = "warning", className = "me-1"),
    dbcButton("Danger", outline = TRUE, color = "danger", className = "me-1"),
    dbcButton("Info", outline = TRUE, color = "info", className = "me-1"),
    dbcButton("Light", outline = TRUE, color = "light", className = "me-1"),
    dbcButton("Dark", outline = TRUE, color = "dark")
  )
)
