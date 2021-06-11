library(dashBootstrapComponents)
library(dashHtmlComponents)

buttons <- htmlDiv(
  list(
    dbcButton("Primary", color = "primary", className = "mr-1"),
    dbcButton("Secondary", color = "secondary", className = "mr-1"),
    dbcButton("Success", color = "success", className = "mr-1"),
    dbcButton("Warning", color = "warning", className = "mr-1"),
    dbcButton("Danger", color = "danger", className = "mr-1"),
    dbcButton("Info", color = "info", className = "mr-1"),
    dbcButton("Light", color = "light", className = "mr-1"),
    dbcButton("Dark", color = "dark", className = "mr-1"),
    dbcButton("Link", color = "link")
  )
)
