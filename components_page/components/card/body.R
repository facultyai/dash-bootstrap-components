library(dashBootstrapComponents)
library(dashHtmlComponents)

cards <- htmlDiv(
  list(
    dbcCard(
      dbcCardBody("This is some text within a card body"),
      class_name = "mb-3"
    ),
    dbcCard("This is also within a body", body = TRUE)
  )
)
