library(dashBootstrapComponents)
library(dashHtmlComponents)

tabs <- htmlDiv(
  list(
    dbcTabs(
      list(
        dbcTab(label = "Tab 1", tab_id = "tab-1"),
        dbcTab(label = "Tab 2", tab_id = "tab-2")
      ),
      id = "tabs",
      active_tab = "tab-1"
    ),
    htmlDiv(id = "content")
  )
)


app$callback(
  output("content", "children"),
  list(input("tabs", "active_tab")),
  function(at) {
    if (at == "tab-1") {
      return(tab1_content)
    } else if (at == "tab-2") {
      return(tab2_content)
    }
    return(htmlP("This should not ever be displayed"))
  }
)
