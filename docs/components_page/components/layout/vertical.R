library(dashBootstrapComponents)

row <- div(
  list(
    dbcRow(
      list(
        dbcCol(div("One of three columns")),
        dbcCol(div("One of three columns")),
        dbcCol(div("One of three columns"))
      ),
      align = "start"
    ),
    dbcRow(
      list(
        dbcCol(div("One of three columns")),
        dbcCol(div("One of three columns")),
        dbcCol(div("One of three columns"))
      ),
      align = "center"
    ),
    dbcRow(
      list(
        dbcCol(div("One of three columns")),
        dbcCol(div("One of three columns")),
        dbcCol(div("One of three columns"))
      ),
      align = "end"
    ),
    dbcRow(
      list(
        dbcCol(div("One of three columns"), align = "start"),
        dbcCol(div("One of three columns"), align = "center"),
        dbcCol(div("One of three columns"), align = "end")
      )
    )
  ),
  className = "pad-row"
)
