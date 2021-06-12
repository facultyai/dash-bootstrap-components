library(dashBootstrapComponents)
library(dashHtmlComponents)

row_vertical <- htmlDiv(
  list(
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light"))
      ),
      align = "start"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light"))
      ),
      align = "center"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light"))
      ),
      align = "end"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"),
               align = "start"),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"),
               align = "center"),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"),
               align = "end")
      )
    )
  )
)
