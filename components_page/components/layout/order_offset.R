library(dashBootstrapComponents)

row <- div(
  list(
    dbcRow(
      dbcCol(
        div("A single, half-width column"),
        width = list(size = 6, offset = 3)
      )
    ),
    dbcRow(
      list(
        dbcCol(
          div("The last of three columns"),
          width = list(size = 3, order = "last", offset = 1)
        ),
        dbcCol(
          div("The first of three columns"),
          width = list(size = 3, order = 1, offset = 2)
        ),
        dbcCol(
          div("The second of three columns"),
          width = list(size = 3, order = 5)
        )
      )
    )
  )
)
