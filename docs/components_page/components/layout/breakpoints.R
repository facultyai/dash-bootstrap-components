library(dashBootstrapComponents)
library(dashHtmlComponents)

row <- htmlDiv(
  list(
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of three columns"
        ), md = 4),
        dbcCol(htmlDiv(
          "One of three columns"
        ), md = 4),
        dbcCol(htmlDiv(
          "One of three columns"
        ), md = 4)
      )
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of four columns"
        ), width = 6, lg = 3),
        dbcCol(htmlDiv(
          "One of four columns"
        ), width = 6, lg = 3),
        dbcCol(htmlDiv(
          "One of four columns"
        ), width = 6, lg = 3),
        dbcCol(htmlDiv(
          "One of four columns"
        ), width = 6, lg = 3)
      )
    )
  )
)
