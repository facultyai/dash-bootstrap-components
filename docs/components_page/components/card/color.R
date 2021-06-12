library(dashBootstrapComponents)
library(dashHtmlComponents)

card_content <- list(
  dbcCardHeader("Card Header"),
  dbcCardBody(
    list(
      htmlH5("Card Title", className = "card-title"),
      htmlP(
        "This is some card content that we'll reuse",
        className = "card-text"
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
        dbcCard(card_content, color = "info", inverse = TRUE)
      ),
      className = "mb-4"
    ),
    dbcRow(
      list(
        dbcCol(dbcCard(card_content, color = "success", inverse = TRUE)),
        dbcCol(dbcCard(card_content, color = "warning", inverse = TRUE)),
        dbcCard(card_content, color = "danger", inverse = TRUE)
      ),
      className = "mb-4"
    ),
    dbcRow(
      list(
        dbcCol(dbcCard(card_content, color = "light")),
        dbcCol(dbcCard(card_content, color = "dark")),
        dbcCard(card_content, color = "danger", inverse = TRUE)
      )
    )
  )
)
