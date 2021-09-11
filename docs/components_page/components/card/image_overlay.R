library(dashBootstrapComponents)
library(dashHtmlComponents)

card <- dbcCard(
  list(
    dbcCardImg(src = "/static/images/placeholder286x180.png", top = TRUE),
    dbcCardImgOverlay(
      dbcCardBody(
        list(
          htmlH4("Card title", className = "card-title"),
          htmlP(
            paste(
              "An example of using an image in the background of",
              "a card."
            ),
            className = "card-text"
          ),
          dbcButton("Go somewhere", color = "primary")
        )
      )
    )
  ),
  style = list("width" = "18rem")
)
