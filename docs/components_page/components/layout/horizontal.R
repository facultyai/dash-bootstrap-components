library(dashBootstrapComponents)
library(dashHtmlComponents)

row <- htmlDiv(
  list(
    dbcRow(
      list(
        dbcCol(htmlDiv("One of two columns"), width = 4),
        dbcCol(htmlDiv("One of two columns"), width = 4)
      ),
      justify = "start"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of two columns"), width = 4),
        dbcCol(htmlDiv("One of two columns"), width = 4)
      ),
      justify = "center"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of two columns"), width = 4),
        dbcCol(htmlDiv("One of two columns"), width = 4)
      ),
      justify = "end"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of two columns"), width = 4),
        dbcCol(htmlDiv("One of two columns"), width = 4)
      ),
      justify = "between"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of two columns"), width = 4),
        dbcCol(htmlDiv("One of two columns"), width = 4)
      ),
      justify = "around"
    )
  )
)
