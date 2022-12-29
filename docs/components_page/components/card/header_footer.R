library(dashBootstrapComponents)

card <- dbcCard(
  list(
    dbcCardHeader("This is the header"),
    dbcCardBody(
      list(
        h4("Card title", className = "card-title"),
        p("This is some card text", className = "card-text")
      )
    ),
    dbcCardFooter("This is the footer")
  ),
  style = list(width = "18rem")
)
