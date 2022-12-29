library(dashBootstrapComponents)

button <- div(
  list(
    dbcButton("Block button", color = "primary"),
    dbcButton("Block button", color = "secondary")
  ),
  className = "d-grid gap-2 d-md-block"
)
