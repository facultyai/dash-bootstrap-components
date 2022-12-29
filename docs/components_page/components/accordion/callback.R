library(dashBootstrapComponents)

accordion <- div(
  list(
    dbcAccordion(
      list(
        dbcAccordionItem(
          "This is the content of the first section",
          title = "Item 1",
          item_id = "item-1"
        ),
        dbcAccordionItem(
          "This is the content of the second section",
          title = "Item 2",
          item_id = "item-2"
        ),
        dbcAccordionItem(
          "This is the content of the third section",
          title = "Item 3",
          item_id = "item-3"
        )
      ),
      id = "accordion",
      active_item = "item-1"
    ),
    div(id = "accordion-contents", className = "mt-3")
  )
)

app$callback(
  output("accordion-contents", "children"),
  list(input("accordion", "active_item")),
  function(item) {
    return(sprintf("Item selected: %s", item))
  }
)
