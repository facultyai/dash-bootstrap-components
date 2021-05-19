
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)


card_content_1 <- list(
  dbcCardHeader("Card header"),
  dbcCardBody(
    list(
      htmlH5("Card title", className = "card-title"),
      htmlP(
          "This is some card content that we'll reuse",
          className = "card-text"
      )
    )
  )
)

card_content_2 <- dbcCardBody(
  list(
    htmlBlockquote(
      list(
        htmlP(
          "A learning experience is one of those things that says,
          'You know that thing you just did? Don't do that.'"
        ),
        htmlFooter(
            htmlSmall("Douglas Adams", className = "text-muted")
        )
      ),
      className = "blockquote"
    )
  )
)

card_content_3 <- list(
  dbcCardImg(src = "/static/images/placeholder286x180.png", top = TRUE),
  dbcCardBody(
    list(
      htmlH5("Card with image", className = "card-title"),
      htmlP("This card has an image on top, and a button below",
            className = "card-text",
      ),
      dbcButton("Click me!", color = "primary")
    )
  )
)

cards_columns <- dbcCardColumns(
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

cards_deck <- dbcCardDeck(
  list(
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("Card 1", className = "card-title"),
          htmlP(
              "This card has some text content, which is a little
              bit longer than the second card.",
              className = "card-text"
          ),
          dbcButton(
              "Click here", color = "success", className = "mt-auto"
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
            "Click here", color = "warning", className = "mt-auto"
          )
        )
      )
    ),
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("Card 3", className = "card-title"),
          htmlP(
            "This card has some text content, which is longer
            than both of the other two cards, in order to
            demonstrate the equal height property of cards in a
            card group.",
            className = "card-text",
          ),
          dbcButton(
            "Click here", color = "danger", className = "mt-auto"
          )
        )
      )
    )
  )
)

cards_group <- dbcCardGroup(
  list(
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("Card 1", className = "card-title"),
          htmlP(
            "This card has some text content, which is a little
            bit longer than the second card.",
            className = "card-text",
          ),
          dbcButton(
            "Click here", color = "success", className = "mt-auto"
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
            "Click here", color = "warning", className = "mt-auto"
          )
        )
      )
    ),
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("Card 3", className = "card-title"),
          htmlP(
            "This card has some text content, which is longer
            than both of the other two cards, in order to
            demonstrate the equal height property of cards in a
            card group.",
            className = "card-text",
          ),
          dbcButton(
            "Click here", color = "danger", className = "mt-auto"
          )
        )
      )
    )
  )
)


app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Card Layout - Card groups"),
      cards_group,
      htmlHr(),
      htmlH2("Card Layout - Card deck"),
      cards_deck,
      htmlHr(),
      htmlH2("Card Layout - Card columns"),
      cards_columns
    ),
    className = "p-5")
)

app$run_server(showcase = TRUE)
