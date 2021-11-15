library(dashBootstrapComponents)

card_content <- list(
  dbcCardHeader("Card header"),
  dbcCardBody(
    list(
      html$h5("Card title", className = "card-title"),
      p(
        "This is some card content that we'll reuse",
        className = "card-text"
      )
    )
  )
)

cards <- div(
  list(
    dbcRow(
      list(
        dbcCol(dbcCard(card_content, color = "primary", inverse = TRUE)),
        dbcCol(dbcCard(card_content, color = "secondary", inverse = TRUE)),
        dbcCol(dbcCard(card_content, color = "info", inverse = TRUE))
      ),
      className = "mb-4"
    ),
    dbcRow(
      list(
        dbcCol(dbcCard(card_content, color = "success", inverse = TRUE)),
        dbcCol(dbcCard(card_content, color = "warning", inverse = TRUE)),
        dbcCol(dbcCard(card_content, color = "danger", inverse = TRUE))
      ),
      className = "mb-4"
    ),
    dbcRow(
      list(
        dbcCol(dbcCard(card_content, color = "light")),
        dbcCol(dbcCard(card_content, color = "dark", inverse = TRUE))
      )
    )
  )
)
