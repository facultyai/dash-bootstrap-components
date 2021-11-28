library(dashBootstrapComponents)

cards <- div(
  list(
    dbcCard(
      dbcCardBody("This is some text within a card body"),
      className = "mb-3"
    ),
    dbcCard("This is also within a body", body = TRUE)
  )
)
