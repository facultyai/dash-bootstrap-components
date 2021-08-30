library(dashBootstrapComponents)

button_group <- dbcButtonGroup(
  list(
    dbcButton("Left", outline = TRUE, color = "primary"),
    dbcButton("Middle", outline = TRUE, color = "primary"),
    dbcButton("Right", outline = TRUE, color = "primary")
  )
)
