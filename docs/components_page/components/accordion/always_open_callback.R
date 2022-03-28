library(dashBootstrapComponents)

accordion <- div(
  list(
    dbcAccordion(
      list(
        dbcAccordionItem(
          paste(
            "This is the content of the first section. It has a ",
            "default ID of item-0."
          ),
          title = "Item 1: item-0"
        ),
        dbcAccordionItem(
          paste(
            "This is the content of the second section. It has a ",
            "default ID of item-1."
          ),
          title = "Item 2: item-1"
        ),
        dbcAccordionItem(
          paste(
            "This is the content of the third section. It has a ",
            "default ID of item-2."
          ),
          title = "Item 3: item-2"
        )
      ),
      id = "accordion-open-ids",
      always_open = TRUE
    ),
    div(id = "accordion-contents-open-ids", className = "mt-3")
  )
)


app$callback(
  output("accordion-contents-open-ids", "children"),
  list(input("accordion-open-ids", "active_item")),
  function(item) {
    return(sprintf("Item(s) selected: %s", item))
  }
)
