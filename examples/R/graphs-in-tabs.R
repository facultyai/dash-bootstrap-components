
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)
library(plotly)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

app$layout(
  dbcContainer(
    list(
      dccStore(id = "store"),
      htmlH1("Dynamically rendered tab content"),
      htmlHr(),
      dbcButton(
            "Regenerate graphs",
            color = "primary",
            block = TRUE,
            id = "button",
            className = "mb-3",
      ),
      dbcTabs(
        list(
           dbcTab(label = "Scatter", tab_id = "scatter"),
           dbcTab(label = "Histograms", tab_id = "histogram")
        ),
        id = "tabs",
        active_tab = "scatter",
        ),
        htmlDiv(id = "tab-content", className = "p-4")
    ),
  className = "p-5")
)


app$callback(
    output("tab-content", "children"),
    list(input("tabs", "active_tab"),
         input("store", "data")),
  function(active_tab, data) {
    # This callback takes the 'active_tab' property as input, as well as the
    # stored graphs, and renders the tab content depending on what the value of
    # 'active_tab' is.

    if (active_tab == "scatter") {
        return(dccGraph(figure = data$scatter))
    } else if (active_tab == "histogram") {
        return(dbcRow(
            list(
                dbcCol(dccGraph(figure = data$hist_1), width = 6),
                dbcCol(dccGraph(figure = data$hist_2), width = 6)
            )
        ))
    }
  }
)


app$callback(
  output("store", "data"),
  list(input("button", "n_clicks")),
  function(n) {
    # This callback generates three simple graphs from random data.

    if (class(n) == "list") {
        # generate empty graphs when app loads
        fig <- plot_ly()
        return(list(scatter = fig, hist_1 = fig, hist_2 = fig))
     }

    # simulate expensive graph generation process
    Sys.sleep(2)

    # save figures in a list for sending to the dccStore
    return(list(
      scatter = plot_ly(x = 1:100, y = ~rnorm(100, mean = 5)),
      hist_1 = plot_ly(x = ~rnorm(50), type = "histogram"),
      hist_2 = plot_ly(x = ~rnorm(50), type = "histogram")
    ))
  }
)

app$run_server(showcase = TRUE)
