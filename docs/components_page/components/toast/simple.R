library(dashBootstrapComponents)

toast <- dbcToast(
  list(
    p("This is the content of the toast", className = "mb-0")
  ),
  header = "This is the header",
)
