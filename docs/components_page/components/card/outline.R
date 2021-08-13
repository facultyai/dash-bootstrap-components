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

row_1 <- dbcRow(
  list(
    dbcCol(dbcCard(card_content, color = "primary", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "secondary", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "info", outline = TRUE))
  ),
  class_name = "mb-4"
)

row_2 <- dbcRow(
  list(
    dbcCol(dbcCard(card_content, color = "success", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "warning", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "danger", outline = TRUE))
  ),
  class_name = "mb-4"
)

row_3 <- dbcRow(
  list(
    dbcCol(dbcCard(card_content, color = "light", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "dark", outline = TRUE))
  )
)

cards <- htmlDiv(list(row_1, row_2, row_3))
