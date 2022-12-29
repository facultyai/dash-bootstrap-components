library(dashBootstrapComponents)

card <- dbcCard(
  list(
    dbcCardHeader(
      dbcTabs(
        list(
          dbcTab(label = "Tab 1", tab_id = "tab-1"),
          dbcTab(label = "Tab 2", tab_id = "tab-2")
        ),
        id = "card-tabs",
        active_tab = "tab-1"
      )
    ),
    dbcCardBody(p(id = "card-content", className = "card-text"))
  )
)


app$callback(
  output("card-content", "children"),
  list(input("card-tabs", "active_tab")),
  function(active_tab) {
    return(sprintf("This is tab %s", active_tab))
  }
)
