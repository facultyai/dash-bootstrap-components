library(dashBootstrapComponents)
library(dashHtmlComponents)


button_groups <- htmlDiv(
  list(
    dbcButtonGroup(
      list(
        dbcButton("Left"), dbcButton("Middle"),
        dbcButton("Right")
      ),
      size = "lg",
      className = "mr-1",
    ),
    dbcButtonGroup(
      list(
        dbcButton("Left"), dbcButton("Middle"),
        dbcButton("Right")
      ),
      size = "md",
      className = "mr-1",
    ),
    dbcButtonGroup(
      list(
        dbcButton("Left"), dbcButton("Middle"),
        dbcButton("Right")
      ),
      size = "sm",
    )
  )
)
