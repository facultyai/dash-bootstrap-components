library(dashBootstrapComponents)

button <- div(
  list(
    dbcButton("Block button", color = "primary"),
    dbcButton("Block button", color = "secondary")
  ),
  className = "d-grid gap-2 col-6 mx-auto"
)
