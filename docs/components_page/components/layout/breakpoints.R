library(dashBootstrapComponents)
library(dashHtmlComponents)

row_breakpoint <- htmlDiv(
  list(
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"), md = 4),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"), md = 4),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"), md = 4)
      )
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of four columns", className = "border bg-light"), width = 6, lg = 3),
        dbcCol(htmlDiv(
          "One of four columns", className = "border bg-light"), width = 6, lg = 3),
        dbcCol(htmlDiv(
          "One of four columns", className = "border bg-light"), width = 6, lg = 3),
        dbcCol(htmlDiv(
          "One of four columns", className = "border bg-light"), width = 6, lg = 3)
      )
    )
  )
)
