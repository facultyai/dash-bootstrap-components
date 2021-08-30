library(dashBootstrapComponents)

items <- list(
  dbcDropdownMenuItem("First"),
  dbcDropdownMenuItem(divider = TRUE),
  dbcDropdownMenuItem("Second")
)

dropdown <- dbcRow(
  list(
    dbcCol(
      dbcDropdownMenu(
        label = "Auto close (Default)", children = items, auto_close = TRUE
      ),
      width = "auto"
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "Clickable Outside", children = items, auto_close = "inside"
      ),
      width = "auto"
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "Clickable Inside", children = items, auto_close = "outside"
      ),
      width = "auto"
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "No auto close", children = items, auto_close = FALSE
      ),
      width = "auto"
    )
  ),
  justify = "between"
)
