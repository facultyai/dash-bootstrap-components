library(dashBootstrapComponents)

row <- div(
  list(
    dbcRow(dbcCol(div("A single column"))),
    dbcRow(
      list(
        dbcCol(div("One of three columns")),
        dbcCol(div("One of three columns")),
        dbcCol(div("One of three columns"))
      )
    )
  )
)
