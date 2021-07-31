library(dashBootstrapComponents)
library(dashHtmlComponents)

row <- htmlDiv(
  list(
    dbcRow(dbcCol(htmlDiv("A single column"))),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns")),
        dbcCol(htmlDiv("One of three columns")),
        dbcCol(htmlDiv("One of three columns"))
      )
    )
  )
)
