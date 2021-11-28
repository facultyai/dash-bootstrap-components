library(dashBootstrapComponents)

card <- dbcCard(
  dbcCardBody(
    list(
      h4("Title", className = "card-title"),
      html$h6("Card subtitle", className = "card-subtitle"),
      p(
        paste(
          "Some quick example text to build on the card title and",
          "make up the bulk of the card's content."
        ),
        className = "card-text"
      ),
      dbcCardLink("Card link", href = "#"),
      dbcCardLink("External link", href = "https://google.com")
    )
  ),
  style = list(width = "18rem")
)
