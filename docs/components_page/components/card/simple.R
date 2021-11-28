library(dashBootstrapComponents)

card <- dbcCard(
  list(
    dbcCardImg(src = "/static/images/placeholder286x180.png", top = TRUE),
    dbcCardBody(
      list(
        h4("Card title", className = "card-title"),
        p(
          paste(
            "Some quick example text to build on the card title and",
            "make up the bulk of the card's content."
          ),
          className = "card-text"
        ),
        dbcButton("Go somewhere", color = "primary")
      )
    )
  ),
  style = list(width = "18rem")
)
