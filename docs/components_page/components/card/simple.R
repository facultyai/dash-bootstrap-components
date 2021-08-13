library(dashBootstrapComponents)
library(dashHtmlComponents)

card <- dbcCard(
  list(
    dbcCardImg(src = "/static/images/placeholder286x180.png", top = TRUE),
    dbcCardBody(
      list(
        htmlH4("Card title", class_name = "card-title"),
        htmlP(
            paste(
              "Some quick example text to build on the card title and",
              "make up the bulk of the card's content."
            ),
            class_name = "card-text"
        ),
        dbcButton("Go somewhere", color = "primary")
      )
    )
  ),
  style = list(width = "18rem")
)
