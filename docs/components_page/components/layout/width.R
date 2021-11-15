library(dashBootstrapComponents)

row <- div(
  list(
    dbcRow(
      dbcCol(div("A single, half-width column"), width = 6)
    ),
    dbcRow(
      dbcCol(div("An automatically sized column"), width = "auto")
    ),
    dbcRow(
      list(
        dbcCol(div("One of three columns"), width = 3),
        dbcCol(div("One of three columns")),
        dbcCol(div("One of three columns"), width = 3)
      )
    )
  )
)
