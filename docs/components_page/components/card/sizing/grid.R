library(dashBootstrapComponents)

first_card <- dbcCard(
  dbcCardBody(
    list(
      html$h5("Card title", className = "card-title"),
      p("This card has some text content, but not much else"),
      dbcButton("Go somewhere", color = "primary")
    )
  )
)

second_card <- dbcCard(
  dbcCardBody(
    list(
      html$h5("Card title", className = "card-title"),
      p(
        paste(
          "This card also has some text content and not much else, but",
          "it is twice as wide as the first card."
        )
      ),
      dbcButton("Go somewhere", color = "primary")
    )
  )
)

cards <- dbcRow(
  list(
    dbcCol(first_card, width = 4),
    dbcCol(second_card, width = 8)
  )
)
