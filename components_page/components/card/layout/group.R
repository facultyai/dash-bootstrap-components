library(dashBootstrapComponents)
library(dashHtmlComponents)

cards <- dbcCardGroup(
  list(
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("Card 1", className = "card-title"),
          htmlP(
            paste(
              "This card has some text content, which is a little",
              "bit longer than the second card."
            ),
            className = "card-text",
          ),
          dbcButton(
            "Click here",
            color = "success", className = "mt-auto"
          )
        )
      )
    ),
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("Card 2", className = "card-title"),
          htmlP(
            "This card has some text content.",
            className = "card-text",
          ),
          dbcButton(
            "Click here",
            color = "warning", className = "mt-auto"
          )
        )
      )
    ),
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("Card 3", className = "card-title"),
          htmlP(
            paste(
              "This card has some text content, which is longer",
              "than both of the other two cards, in order to",
              "demonstrate the equal height property of cards in a",
              "card group."
            ),
            className = "card-text",
          ),
          dbcButton(
            "Click here",
            color = "danger", className = "mt-auto"
          )
        )
      )
    )
  )
)
