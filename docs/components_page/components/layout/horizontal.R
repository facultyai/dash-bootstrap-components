library(dashBootstrapComponents)
library(dashHtmlComponents)

row_content <- list(
  dbcCol(htmlDiv("One of two columns"), width = 4),
  dbcCol(htmlDiv("One of two columns"), width = 4)
)

row <- htmlDiv(
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
