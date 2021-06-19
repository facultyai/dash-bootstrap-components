library(dashBootstrapComponents)
library(dashHtmlComponents)

buttons <- htmlDiv(
  list(
    dbcButton("Large button", size = "lg", className = "mr-1"),
    dbcButton("Regular button", className = "mr-1"),
    dbcButton("Small button", size = "sm")
  )
)
