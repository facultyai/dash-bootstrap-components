library(dashBootstrapComponents)

row_content <- list(
  dbcCol(div("One of two columns"), width = 4),
  dbcCol(div("One of two columns"), width = 4)
)

row <- div(
  list(
    dbcRow(
      row_content,
      justify = "start"
    ),
    dbcRow(
      row_content,
      justify = "center"
    ),
    dbcRow(
      row_content,
      justify = "end"
    ),
    dbcRow(
      row_content,
      justify = "between"
    ),
    dbcRow(
      row_content,
      justify = "around"
    ),
    dbcRow(
      row_content,
      justify = "evenly"
    )
  )
)
