library(dashBootstrapComponents)
library(dashHtmlComponents)

card <- dbcCard(
  dbcCardBody(
    list(
      htmlH4("Title", class_name = "card-title"),
      htmlH6("Card subtitle", class_name = "card-subtitle"),
      htmlP(
          paste(
            "Some quick example text to build on the card title and",
            "make up the bulk of the card's content."
          ),
          class_name = "card-text",
      ),
      dbcCardLink("Card link", href = "#"),
      dbcCardLink("External link", href = "https://google.com")
    )
  ),
  style = list(width =  "18rem")
)
