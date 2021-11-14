library(dashBootstrapComponents)

tabs <- div(
  list(
    dbcTabs(
      list(
        dbcTab(label = "tab 1", active_tab_style = list(textTransform = "uppercase")),
        dbcTab(label = "tab 2", active_label_style = list(color = "#FB79B3"))
      )
    ),
    br(),
    dbcTabs(
      list(
        dbcTab(label = "Tab 1", activeTabClassName = "fw-bold fst-italic"),
        dbcTab(label = "Tab 2", activeLabelClassName = "text-success")
      )
    )
  )
)
