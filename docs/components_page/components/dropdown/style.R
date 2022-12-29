library(dashBootstrapComponents)

items_style <- list(
  dbcDropdownMenuItem("Item 1"),
  dbcDropdownMenuItem("Item 2"),
  dbcDropdownMenuItem("Item 3")
)

dropdowns <- div(
  list(
    dbcDropdownMenu(
      items_style,
      label = "Primary", color = "primary", className = "m-1"
    ),
    dbcDropdownMenu(
      items_style,
      label = "Secondary", color = "secondary", className = "m-1"
    ),
    dbcDropdownMenu(
      items_style,
      label = "Success", color = "success", className = "m-1"
    ),
    dbcDropdownMenu(
      items_style,
      label = "Warning", color = "warning", className = "m-1"
    ),
    dbcDropdownMenu(
      items_style,
      label = "Danger", color = "danger", className = "m-1"
    ),
    dbcDropdownMenu(items_style,
      label = "Info", color = "info",
      className = "m-1"
    )
  ),
  style = list(display = "flex", flexWrap = "wrap")
)
