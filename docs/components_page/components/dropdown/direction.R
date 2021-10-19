library(dashBootstrapComponents)

items_direction <- list(
  dbcDropdownMenuItem("First"),
  dbcDropdownMenuItem(divider = TRUE),
  dbcDropdownMenuItem("Second")
)

dropdown <- dbcRow(
  list(
    dbcCol(
      dbcDropdownMenu(
        label = "Dropdown (default)", children = items_direction,
        direction = "down"
      ),
      width = "auto"
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "Dropstart", children = items_direction, direction = "start"
      ),
      width = "auto"
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "Dropend", children = items_direction, direction = "end"
      ),
      width = "auto"
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "Dropup", children = items_direction,
        direction = "up"
      ),
      width = "auto"
    )
  ),
  justify = "between"
)
