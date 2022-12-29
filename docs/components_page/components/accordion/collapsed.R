library(dashBootstrapComponents)

accordion <- div(
  dbcAccordion(
    list(
      dbcAccordionItem(
        "This is the content of the first section",
        title = "Item 1"
      ),
      dbcAccordionItem(
        "This is the content of the second section",
        title = "Item 2"
      ),
      dbcAccordionItem(
        "This is the content of the third section",
        title = "Item 3"
      )
    ),
    start_collapsed = TRUE
  )
)
