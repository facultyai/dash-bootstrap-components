library(dashBootstrapComponents)
library(dashHtmlComponents)

items_size <- list(
  dbcDropdownMenuItem("First"),
  dbcDropdownMenuItem(divider = TRUE),
  dbcDropdownMenuItem("Second")
)

dropdown <- htmlDiv(
  list(
    dbcDropdownMenu(
        label = "large dropdown",
        size = "lg",
        children = items_size,
        class_name = "mb-3"
    ),
    dbcDropdownMenu(
        label = "normal dropdown", children = items_size, class_name = "mb-3"
    ),
    dbcDropdownMenu(label = "small dropdown", size = "sm",
                    children = items_size)
  )
)
