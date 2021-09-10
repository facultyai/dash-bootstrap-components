library(dashBootstrapComponents)
library(dashHtmlComponents)

tab1_content <- dbcCard(
  dbcCardBody(
    list(
      htmlP("This is tab 1!", className = "card-text"),
      dbcButton("Click here", color = "success")
    )
  ),
  className = "mt-3"
)

tab2_content <- dbcCard(
  dbcCardBody(
    list(
      htmlP("This is tab 2!", className = "card-text"),
      dbcButton("Don't click here", color = "danger")
    )
  ),
  className = "mt-3",
)


tabs <- dbcTabs(
  list(
    dbcTab(tab1_content, label = "Tab 1"),
    dbcTab(tab2_content, label = "Tab 2"),
    dbcTab(
      "This tab's content is never seen",
      label = "Tab 3", disabled = TRUE
    )
  )
)
