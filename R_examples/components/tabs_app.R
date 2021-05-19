

library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

# ------------- active_tab

tabs_active <- htmlDiv(
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


# ------------- card
tabs_card <- dbcCard(
  list(
    dbcCardHeader(
      dbcTabs(
        list(
          dbcTab(label = "Tab 1", tab_id = "tab-1"),
          dbcTab(label = "Tab 2", tab_id = "tab-2")
        ),
        id = "card-tabs",
        card = TRUE,
        active_tab = "tab-1"
      )
    ),
    dbcCardBody(htmlP(id = "card-content", className = "card-text"))
  )
)


app$callback(
  output("card-content", "children"),
  list(input("card-tabs", "active_tab")),
  function(active_tab) {
    return(sprintf("This is tab %s", active_tab))
  }
)


#-------------- simple


tab1_content <- dbcCard(
  dbcCardBody(
    list(
      htmlP("This is tab 1!", className = "card-text"),
      dbcButton("Click here", color = "success")
    )
  ),
  className = "mt-3"
)

tab2_content <- dbcCard(
    dbcCardBody(
      list(
        htmlP("This is tab 2!", className = "card-text"),
        dbcButton("Don't click here", color = "danger")
      )
    ),
    className = "mt-3",
)


tabs_simple <- dbcTabs(
  list(
    dbcTab(tab1_content, label = "Tab 1"),
    dbcTab(tab2_content, label = "Tab 2"),
    dbcTab(
        "This tab's content is never seen", label = "Tab 3", disabled = TRUE
    )
  )
)


# ------------- style

tabs_style <- htmlDiv(
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
        dbcTab(label = "Tab 1", tabClassName = "ml-auto"),
        dbcTab(label = "Tab 2", labelClassName = "text-success")
      )
    )
  )
)

# -------------


app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Tabs as children"),
      tabs_simple,
      htmlHr(),
      htmlH2("Tabs with callback"),
      tabs_active,
      htmlHr(),
      htmlH2("Tabs in cards"),
      tabs_card,
      htmlHr(),
      htmlH2("Tabs styling"),
      tabs_style
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
