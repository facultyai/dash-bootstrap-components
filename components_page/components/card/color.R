library(dashBootstrapComponents)
library(dashHtmlComponents)

card_content <- list(
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

cards <- htmlDiv(
  list(
    dbcRow(
      list(
        dbcCol(dbcCard(card_content, color = "primary", inverse = TRUE)),
        dbcCol(dbcCard(card_content, color = "secondary", inverse = TRUE)),
        dbcCol(dbcCard(card_content, color = "info", inverse = TRUE))
      ),
      class_name = "mb-4"
    ),
    dbcRow(
      list(
        dbcCol(dbcCard(card_content, color = "success", inverse = TRUE)),
        dbcCol(dbcCard(card_content, color = "warning", inverse = TRUE)),
        dbcCol(dbcCard(card_content, color = "danger", inverse = TRUE))
      ),
      class_name = "mb-4"
    ),
    dbcRow(
      list(
        dbcCol(dbcCard(card_content, color = "light")),
        dbcCol(dbcCard(card_content, color = "dark", inverse = TRUE))
      )
    )
  )
)
