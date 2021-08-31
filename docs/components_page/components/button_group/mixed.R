library(dashBootstrapComponents)

button_group <- dbcButtonGroup(
  list(
    dbcButton("Left", color = "danger"),
    dbcButton("Middle", color = "warning"),
    dbcButton("Right", color = "success")
  )
)
