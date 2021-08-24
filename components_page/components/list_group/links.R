library(dashBootstrapComponents)
library(dashHtmlComponents)

list_group <- htmlDiv(
  list(
    dbcListGroup(
      list(
        dbcListGroupItem(
          "Internal link",
          href = "/l/components/list_group"
        ),
        dbcListGroupItem("External link", href = "https://google.com"),
        dbcListGroupItem(
          "Disabled link",
          href = "https://google.com", disabled = TRUE
        ),
        dbcListGroupItem(
          "Button",
          id = "button-item", n_clicks = 0, action = TRUE
        )
      )
    ),
    htmlP(id = "counter")
  )
)


app$callback(
  output("counter", "children"),
  list(input("button-item", "n_clicks")),
  function(n) {
    return(sprintf("Button clicked %d times", n))
  }
)
