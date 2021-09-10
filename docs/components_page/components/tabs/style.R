library(dashBootstrapComponents)
library(dashHtmlComponents)

tabs <- htmlDiv(
  list(
    dbcTabs(
      list(
        dbcTab(label = "Tab 1", tab_style = list(marginLeft = "auto")),
        dbcTab(label = "Tab 2", label_style = list(color = "#00AEF9"))
      )
    ),
    htmlBr(),
    dbcTabs(
      list(
        dbcTab(label = "Tab 1", tabClassName = "ms-auto"),
        dbcTab(label = "Tab 2", labelClassName = "text-success")
      )
    )
  )
)
