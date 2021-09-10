library(dashBootstrapComponents)
library(dashHtmlComponents)

buttons <- htmlDiv(
  list(
    dbcButton("Regular", color = "primary", className = "me-1"),
    dbcButton("Active", color = "primary", active = TRUE, className = "me-1"),
    dbcButton("Disabled", color = "primary", disabled = TRUE)
  )
)
