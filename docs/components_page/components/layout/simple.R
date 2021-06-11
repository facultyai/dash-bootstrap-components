library(dashBootstrapComponents)
library(dashHtmlComponents)

row_simple <- htmlDiv(
  list(
    dbcRow(dbcCol(htmlDiv("A single column", className = "border bg-light"))),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light"))
      )
    )
  )
)
