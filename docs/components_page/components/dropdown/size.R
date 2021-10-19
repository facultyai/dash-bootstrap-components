library(dashBootstrapComponents)
library(dashHtmlComponents)

items <- list(
  dbcDropdownMenuItem("First"),
  dbcDropdownMenuItem(divider = TRUE),
  dbcDropdownMenuItem("Second")
)

dropdown <- htmlDiv(
  list(
    dbcDropdownMenu(
      label = "large dropdown",
      size = "lg",
      children = items,
      className = "mb-3"
    ),
    dbcDropdownMenu(
      label = "normal dropdown", children = items, className = "mb-3"
    ),
    dbcDropdownMenu(
      label = "small dropdown", size = "sm",
      children = items
    )
  )
)
