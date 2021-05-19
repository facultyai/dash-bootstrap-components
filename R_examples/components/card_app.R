

library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)


card_body <- htmlDiv(
  list(
    dbcCard(
      dbcCardBody("This is some text within a card body"),
      className = "mb-3"
    ),
    dbcCard("This is also within a body", body = TRUE)
  )
)

#-----------
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

cards_color <- htmlDiv(
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
# ---------------

card_header_footer <- dbcCard(
  list(
      dbcCardHeader("This is the header"),
      dbcCardBody(
        list(
          htmlH4("Card title", className = "card-title"),
          htmlP("This is some card text", className = "card-text")
        )
      ),
      dbcCardFooter("This is the footer")
  ),
  style = list(width = "18rem")
)

#------------
top_card <- dbcCard(
  list(
    dbcCardImg(src = " /static/images/placeholder286x180.png", top = TRUE),
    dbcCardBody(
      htmlP("This card has an image at the top", className = "card-text")
    )
  ),
  style = list(width =  "18rem")
)

bottom_card <- dbcCard(
  list(

    dbcCardBody(
      htmlP("This has a bottom image", className = "card-text")
    ),
    dbcCardImg(src = " /static/images/placeholder286x180.png", bottom = TRUE)
  ),
  style = list(width =  "18rem")
)

cards_image <- dbcRow(
  list(
    dbcCol(top_card, width = "auto"), dbcCol(bottom_card, width = "auto")
  )
)
#------------

card_list_group <- dbcCard(
  dbcListGroup(
    list(
      dbcListGroupItem("Item 1"),
      dbcListGroupItem("Item 2"),
      dbcListGroupItem("Item 3")
    ),
    flush = TRUE
  ),
  style = list(width =  "18rem")
)

#----------------
# include card_content
row_1 <- dbcRow(
  list(
    dbcCol(dbcCard(card_content, color = "primary", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "secondary", outline = TRUE)),
    dbcCard(card_content, color = "info", outline = TRUE)
  ),
  className = "mb-4"
)

row_2 <- dbcRow(
  list(
    dbcCol(dbcCard(card_content, color = "success", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "warning", outline = TRUE)),
    dbcCard(card_content, color = "danger", outline = TRUE)
  ),
  className = "mb-4"
)

row_3 <- dbcRow(
  list(
    dbcCol(dbcCard(card_content, color = "light", outline = TRUE)),
    dbcCol(dbcCard(card_content, color = "dark", outline = TRUE))
  )
)
cards_outline <- htmlDiv(
  list(
    row_1, row_2, row_3
  )
)
# ---------------


card_simple <- dbcCard(
  list(
    dbcCardImg(src = " /static/images/placeholder286x180.png", top = TRUE),
    dbcCardBody(
      list(
        htmlH4("Card title", className = "card-title"),
        htmlP(
            "Some quick example text to build on the card title and
            make up the bulk of the card's content.",
            className = "card-text"
        ),
        dbcButton("Go somewhere", color = "primary")
      )
    )
  ),
  style = list(width =  "18rem")
)

card_ttl <- dbcCard(
  list(
    dbcCardBody(
      list(
        htmlH4("Title", className = "card-title"),
        htmlH6("Card subtitle", className = "card-subtitle"),
        htmlP(
            "Some quick example text to build on the card title and
            make up the bulk of the card's content.",
            className = "card-text",
        ),
        dbcCardLink("Card link", href = "#"),
        dbcCardLink("External link", href = "https://google.com")
      )
    )
  ),
  style = list(width =  "18rem")
)


app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Card - Simple example"),
      card_simple,
      htmlHr(),
      htmlH2("Card Body"),
      card_body,
      htmlHr(),
      htmlH2("Card titles, text, links"),
      card_ttl,
      htmlHr(),
      htmlH2("Card Images"),
      cards_image,
      htmlHr(),
      htmlH2("Card List Groups"),
      card_list_group,
      htmlHr(),
      htmlH2("Card Header and footer"),
      card_header_footer
    ),
    className = "p-5"
  )
)


app$run_server(showcase = TRUE)