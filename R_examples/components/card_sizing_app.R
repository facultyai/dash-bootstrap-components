
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)


card_css <- dbcCard(
  dbcCardBody(
    list(
      htmlH5("Custom CSS", className = "card-title"),
      htmlP(
        "This card has inline styles applied controlling the width.
        You could also apply the same styles with a custom CSS class."
      )
    )
  ),
  style = list(width = "18rem"),
)

first_card <- dbcCard(
  dbcCardBody(
    list(
      htmlH5("Card title", className = "card-title"),
      htmlP("This card has some text content, but not much else"),
      dbcButton("Go somewhere", color = "primary")
    )
  )
)

second_card <- dbcCard(
  dbcCardBody(
    list(
      htmlH5("Card title", className = "card-title"),
      htmlP(
        "This card also has some text content and not much else, but
        it is twice as wide as the first card."
      ),
      dbcButton("Go somewhere", color = "primary")
    )
  )
)

cards_grid <- dbcRow(
  list(
    dbcCol(first_card, width = 4),
    dbcCol(second_card, width = 8)
  )
)

cards_utility <- htmlDiv(
  list(
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("75% width card", className = "card-title"),
          htmlP(
            list(
              "This card uses the ",
              htmlCode("w-75"),
              " class to set the width to 75%"
            ),
            className = "card-text"
          )
        )
      ),
      className = "w-75 mb-3"
    ),
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("50% width card", className = "card-title"),
          htmlP(
            list(
              "This card uses the ",
              htmlCode("w-50"),
              " class to set the width to 50%"
            ),
            className = "card-text"
          )
        )
      ),
      className = "w-50"
    )
  )
)


app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Card Sizing - Using grid components"),
      cards_grid,
      htmlHr(),
      htmlH2("Card Sizing - Using Bootstrap Utility classes"),
      cards_utility,
      htmlHr(),
      htmlH2("Card Sizing - Using custom CSS"),
      card_css
    ),
    className = "p-5")
)

app$run_server(showcase = TRUE)
