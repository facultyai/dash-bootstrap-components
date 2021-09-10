library(dashBootstrapComponents)
library(dashHtmlComponents)

card <- dbcCard(
  list(
    dbcCardHeader("This is the header"),
    dbcCardBody(
      list(
        htmlH4("Card title", className = "card-title"),
        htmlP("This is some card text", className = "card-text")
      )
    ),
    dbcCardFooter("This is the footer")
  ),
  style = list(width = "18rem")
)
