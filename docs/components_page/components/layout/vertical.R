library(dashBootstrapComponents)
library(dashHtmlComponents)

row <- htmlDiv(
  list(
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns")),
        dbcCol(htmlDiv("One of three columns")),
        dbcCol(htmlDiv("One of three columns"))
      ),
      align = "start"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns")),
        dbcCol(htmlDiv("One of three columns")),
        dbcCol(htmlDiv("One of three columns"))
      ),
      align = "center"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns")),
        dbcCol(htmlDiv("One of three columns")),
        dbcCol(htmlDiv("One of three columns"))
      ),
      align = "end"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns"), align = "start"),
        dbcCol(htmlDiv("One of three columns"), align = "center"),
        dbcCol(htmlDiv("One of three columns"), align = "end")
      )
    )
  ),
  className = "pad-row"
)
