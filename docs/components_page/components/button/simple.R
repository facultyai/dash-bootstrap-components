library(dashBootstrapComponents)

buttons <- div(
  list(
    dbcButton("Primary", color = "primary", className = "me-1"),
    dbcButton("Secondary", color = "secondary", className = "me-1"),
    dbcButton("Success", color = "success", className = "me-1"),
    dbcButton("Warning", color = "warning", className = "me-1"),
    dbcButton("Danger", color = "danger", className = "me-1"),
    dbcButton("Info", color = "info", className = "me-1"),
    dbcButton("Light", color = "light", className = "me-1"),
    dbcButton("Dark", color = "dark", className = "me-1"),
    dbcButton("Link", color = "link")
  )
)
