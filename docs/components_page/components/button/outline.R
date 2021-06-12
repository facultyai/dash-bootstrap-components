library(dashBootstrapComponents)
library(dashHtmlComponents)

buttons <- htmlDiv(
  list(
    dbcButton("Primary", outline = TRUE, color = "primary", className = "mr-1"),
    dbcButton(
        "Secondary", outline = TRUE, color = "secondary", className = "mr-1"
    ),
    dbcButton("Success", outline = TRUE, color = "success", className = "mr-1"),
    dbcButton("Warning", outline = TRUE, color = "warning", className = "mr-1"),
    dbcButton("Danger", outline = TRUE, color = "danger", className = "mr-1"),
    dbcButton("Info", outline = TRUE, color = "info", className = "mr-1"),
    dbcButton("Light", outline = TRUE, color = "light", className = "mr-1"),
    dbcButton("Dark", outline = TRUE, color = "dark")
  )
)
