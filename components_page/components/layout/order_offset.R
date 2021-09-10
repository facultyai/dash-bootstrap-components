library(dashBootstrapComponents)
library(dashHtmlComponents)

row <- htmlDiv(
  list(
    dbcRow(
      dbcCol(
        htmlDiv("A single, half-width column"),
        width = list(size = 6, offset = 3)
      )
    ),
    dbcRow(
      list(
        dbcCol(
          htmlDiv("The last of three columns"),
          width = list(size = 3, order = "last", offset = 1)
        ),
        dbcCol(
          htmlDiv("The first of three columns"),
          width = list(size = 3, order = 1, offset = 2)
        ),
        dbcCol(
          htmlDiv("The second of three columns"),
          width = list(size = 3, order = 5)
        )
      )
    )
  )
)
