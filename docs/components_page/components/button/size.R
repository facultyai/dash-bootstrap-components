library(dashBootstrapComponents)
library(dashHtmlComponents)

buttons <- htmlDiv(
  list(
    dbcButton("Large button", size = "lg", className = "me-1"),
    dbcButton("Regular button", className = "me-1"),
    dbcButton("Small button", size = "sm")
  )
)
