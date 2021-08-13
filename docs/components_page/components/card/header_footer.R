library(dashBootstrapComponents)
library(dashHtmlComponents)

card <- dbcCard(
  list(
      dbcCardHeader("This is the header"),
      dbcCardBody(
        list(
          htmlH4("Card title", class_name = "card-title"),
          htmlP("This is some card text", class_name = "card-text")
        )
      ),
      dbcCardFooter("This is the footer")
  ),
  style = list(width = "18rem")
)
