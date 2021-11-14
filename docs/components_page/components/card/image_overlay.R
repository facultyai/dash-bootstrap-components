library(dashBootstrapComponents)

card <- dbcCard(
  list(
    dbcCardImg(
      src = "/static/images/placeholder286x180.png",
      top = TRUE,
      style = list("opacity" = 0.3)
    ),
    dbcCardImgOverlay(
      dbcCardBody(
        list(
          h4("Card title", className = "card-title"),
          p(
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
