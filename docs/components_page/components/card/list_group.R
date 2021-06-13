library(dashBootstrapComponents)
library(dashHtmlComponents)


list_group_card <- dbcCard(
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
