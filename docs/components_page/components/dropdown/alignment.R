library(dashBootstrapComponents)

items <- list(
  dbcDropdownMenuItem("Action"),
  dbcDropdownMenuItem("Another action"),
  dbcDropdownMenuItem("Something else here"),
  dbcDropdownMenuItem(divider = TRUE),
  dbcDropdownMenuItem("Something else here after the divider")
)

dropdown <- dbcRow(
  list(
    dbcCol(
      dbcDropdownMenu(
        label = "Left-aligned menu (default)",
        children = items,
        right = FALSE
      )
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "Right-aligned menu", children = items, right = TRUE
      )
    )
  )
)
