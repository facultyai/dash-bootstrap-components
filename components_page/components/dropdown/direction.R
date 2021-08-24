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
        label = "Dropleft", children = items_direction, direction = "left"
      ),
      width = "auto"
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "Dropright", children = items_direction, direction = "right"
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
