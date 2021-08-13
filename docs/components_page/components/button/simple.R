library(dashBootstrapComponents)
library(dashHtmlComponents)

buttons <- htmlDiv(
  list(
    dbcButton("Primary", color = "primary", class_name = "mr-1"),
    dbcButton("Secondary", color = "secondary", class_name = "mr-1"),
    dbcButton("Success", color = "success", class_name = "mr-1"),
    dbcButton("Warning", color = "warning", class_name = "mr-1"),
    dbcButton("Danger", color = "danger", class_name = "mr-1"),
    dbcButton("Info", color = "info", class_name = "mr-1"),
    dbcButton("Light", color = "light", class_name = "mr-1"),
    dbcButton("Dark", color = "dark", class_name = "mr-1"),
    dbcButton("Link", color = "link")
  )
)
