library(dashBootstrapComponents)
library(dashHtmlComponents)

row_width <- htmlDiv(
  list(
    dbcRow(dbcCol(htmlDiv(
      "A single, half-width column", className = "border bg-light"),
                  width = 6, )),
    dbcRow(
      dbcCol(htmlDiv(
        "An automatically sized column", className = "border bg-light"),
             width = "auto")
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"), width = 3),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"), width = 3)
      )
    )
  )
)
