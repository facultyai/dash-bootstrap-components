library(dashBootstrapComponents)
library(dashHtmlComponents)

row <- htmlDiv(
  list(
    dbcRow(
      dbcCol(htmlDiv("A single, half-width column"), width = 6)
    ),
    dbcRow(
      dbcCol(htmlDiv("An automatically sized column"), width = "auto")
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns"), width = 3),
        dbcCol(htmlDiv("One of three columns")),
        dbcCol(htmlDiv("One of three columns"), width = 3)
      )
    )
  )
)
