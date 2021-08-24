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
      class_name = "me-1",
    ),
    dbcButtonGroup(
      list(
        dbcButton("Left"), dbcButton("Middle"),
        dbcButton("Right")
      ),
      size = "md",
      class_name = "me-1",
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
