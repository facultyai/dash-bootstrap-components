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

row_1 <- dbcRow(
  list(
    dbcCol(dbcCard(card_content, color = "primary", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "secondary", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "info", outline = TRUE))
  ),
  className = "mb-4"
)

row_2 <- dbcRow(
  list(
    dbcCol(dbcCard(card_content, color = "success", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "warning", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "danger", outline = TRUE))
  ),
  className = "mb-4"
)

row_3 <- dbcRow(
  list(
    dbcCol(dbcCard(card_content, color = "light", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "dark", outline = TRUE))
  )
)

cards <- div(list(row_1, row_2, row_3))
