library(dashBootstrapComponents)
library(dashHtmlComponents)

cards <- dbcCardGroup(
  list(
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("Card 1", class_name = "card-title"),
          htmlP(
            paste(
              "This card has some text content, which is a little",
              "bit longer than the second card."
            ),
            class_name = "card-text",
          ),
          dbcButton(
            "Click here",
            color = "success", class_name = "mt-auto"
          )
        )
      )
    ),
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("Card 2", class_name = "card-title"),
          htmlP(
            "This card has some text content.",
            class_name = "card-text",
          ),
          dbcButton(
            "Click here",
            color = "warning", class_name = "mt-auto"
          )
        )
      )
    ),
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("Card 3", class_name = "card-title"),
          htmlP(
            paste(
              "This card has some text content, which is longer",
              "than both of the other two cards, in order to",
              "demonstrate the equal height property of cards in a",
              "card group."
            ),
            class_name = "card-text",
          ),
          dbcButton(
            "Click here",
            color = "danger", class_name = "mt-auto"
          )
        )
      )
    )
  )
)
