library(dashBootstrapComponents)
library(dashHtmlComponents)

top_card <- dbcCard(
  list(
    dbcCardImg(src = "/static/images/placeholder286x180.png", top = TRUE),
    dbcCardBody(
      htmlP("This card has an image at the top", className = "card-text")
    )
  ),
  style = list(width = "18rem")
)

bottom_card <- dbcCard(
  list(
    dbcCardBody(
      htmlP("This has a bottom image", className = "card-text")
    ),
    dbcCardImg(src = "/static/images/placeholder286x180.png", bottom = TRUE)
  ),
  style = list(width = "18rem")
)

cards <- dbcRow(
  list(
    dbcCol(top_card, width = "auto"), dbcCol(bottom_card, width = "auto")
  )
)
