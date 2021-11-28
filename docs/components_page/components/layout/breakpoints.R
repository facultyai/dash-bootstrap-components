library(dashBootstrapComponents)

row <- div(
  list(
    dbcRow(
      list(
        dbcCol(div(
          "One of three columns"
        ), md = 4),
        dbcCol(div(
          "One of three columns"
        ), md = 4),
        dbcCol(div(
          "One of three columns"
        ), md = 4)
      )
    ),
    dbcRow(
      list(
        dbcCol(div(
          "One of four columns"
        ), width = 6, lg = 3),
        dbcCol(div(
          "One of four columns"
        ), width = 6, lg = 3),
        dbcCol(div(
          "One of four columns"
        ), width = 6, lg = 3),
        dbcCol(div(
          "One of four columns"
        ), width = 6, lg = 3)
      )
    )
  )
)
