library(dashBootstrapComponents)
library(dashHtmlComponents)

card <- dbcCard(
  list(
    dbcCardImg(src = "/static/images/placeholder286x180.png", top = TRUE),
    dbcCardImgOverlay(
      dbcCardBody(
        list(
          htmlH4("Card title", class_name = "card-title"),
          htmlP(
            paste(
              "An example of using an image in the background of",
              "a card."
            ),
            class_name = "card-text"
          ),
          dbcButton("Go somewhere", color = "primary")
        )
      )
    )
  ),
  style = list("width" = "18rem")
)
