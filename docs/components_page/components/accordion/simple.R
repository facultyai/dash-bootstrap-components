library(dashBootstrapComponents)
library(dashCoreComponents)
library(dashHtmlComponents)

accordion <- htmlDiv(
  dbcAccordion(
    list(
      dbcAccordionItem(
        list(
          htmlP("This is the content of the first section"),
          dbcButton("Click here")
        ),
        title = "Item 1"
      ),
      dbcAccordionItem(
        list(
          htmlP("This is the content of the second section"),
          dbcButton("Don't click me!", color = "danger")
        ),
        title = "Item 2"
      ),
      dbcAccordionItem(
        "This is the content of the third section",
        title = "Item 3"
      )
    )
  )
)
