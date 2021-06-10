library(dashBootstrapComponents)

list_group_content <- dbcListGroup(
  list(
    dbcListGroupItem(
      list(
        dbcListGroupItemHeading("This item has a heading"),
        dbcListGroupItemText("And some text underneath")
      )
    ),
    dbcListGroupItem(
      list(
        dbcListGroupItemHeading("This item also has a heading"),
        dbcListGroupItemText("And some more text underneath too")
      )
    )
  )
)
