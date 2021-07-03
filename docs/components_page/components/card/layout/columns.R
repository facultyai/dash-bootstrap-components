library(dashBootstrapComponents)
library(dashHtmlComponents)

card_content_1 <- list(
  dbcCardHeader("Card header"),
  dbcCardBody(
    list(
      htmlH5("Card title", class_name = "card-title"),
      htmlP(
          "This is some card content that we'll reuse",
          class_name = "card-text"
      )
    )
  )
)

card_content_2 <- dbcCardBody(
  list(
    htmlBlockquote(
      list(
        htmlP(
          paste(
            "A learning experience is one of those things that says,",
            "'You know that thing you just did? Don't do that.'"
          )
        ),
        htmlFooter(
            htmlSmall("Douglas Adams", class_name = "text-muted")
        )
      ),
      class_name = "blockquote"
    )
  )
)

card_content_3 <- list(
  dbcCardImg(src = "/static/images/placeholder286x180.png", top = TRUE),
  dbcCardBody(
    list(
      htmlH5("Card with image", class_name = "card-title"),
      htmlP("This card has an image on top, and a button below",
            class_name = "card-text",
      ),
      dbcButton("Click me!", color = "primary")
    )
  )
)

cards <- dbcCardColumns(
  list(
    dbcCard(card_content_1, color = "primary", inverse = TRUE),
    dbcCard(card_content_2, body = TRUE),
    dbcCard(card_content_1, color = "secondary", inverse = TRUE),
    dbcCard(card_content_3, color = "info", inverse = TRUE),
    dbcCard(card_content_1, color = "success", inverse = TRUE),
    dbcCard(card_content_1, color = "warning", inverse = TRUE),
    dbcCard(card_content_1, color = "danger", inverse = TRUE),
    dbcCard(card_content_3, color = "light"),
    dbcCard(card_content_1, color = "dark", inverse = TRUE)
  )
)
