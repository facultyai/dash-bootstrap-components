library(dashBootstrapComponents)
library(dashHtmlComponents)

items_size <- list(
  dbcDropdownMenuItem("First"),
  dbcDropdownMenuItem(divider = TRUE),
  dbcDropdownMenuItem("Second")
)

dropdown_size <- htmlDiv(
  list(
    dbcDropdownMenu(
        label = "large dropdown",
        bs_size = "lg",
        children = items_size,
        className = "mb-3"
    ),
    dbcDropdownMenu(
        label = "normal dropdown", children = items_size, className = "mb-3"
    ),
    dbcDropdownMenu(label = "small dropdown", bs_size = "sm",
                    children = items_size)
  )
)
