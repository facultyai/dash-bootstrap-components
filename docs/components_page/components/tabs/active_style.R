library(dashBootstrapComponents)
library(dashHtmlComponents)

tabs <- htmlDiv(
  list(
    dbcTabs(
      list(
        dbcTab(label = "tab 1", active_tab_style = list(textTransform = "uppercase")),
        dbcTab(label = "tab 2", active_label_style = list(color = "#FB79B3"))
      )
    ),
    htmlBr(),
    dbcTabs(
      list(
        dbcTab(label = "Tab 1", activeTabClassName = "fw-bold fst-italic"),
        dbcTab(label = "Tab 2", activeLabelClassName = "text-success")
      )
    )
  )
)
