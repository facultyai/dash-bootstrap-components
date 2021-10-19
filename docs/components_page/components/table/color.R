library(dashBootstrapComponents)
library(dashHtmlComponents)

color_selector <- htmlDiv(
  list(
    htmlDiv("Select a colour theme:"),
    dbcSelect(
      id = "change-table-color",
      options = list(
        list("label" = "primary", "value" = "primary"),
        list("label" = "secondary", "value" = "secondary"),
        list("label" = "success", "value" = "success"),
        list("label" = "danger", "value" = "danger"),
        list("label" = "warning", "value" = "warning"),
        list("label" = "info", "value" = "info"),
        list("label" = "light", "value" = "light"),
        list("label" = "dark", "value" = "dark")
      ),
      value = "primary"
    )
  ),
  className = "p-3 m-2 border"
)

table <- htmlDiv(
  list(
    color_selector,
    dbcTable(
      # using the same table as in the above example
      table_header + table_body,
      id = "table-color",
      color = "primary"
    )
  )
)

app$callback(
  output("table-color", "color"),
  list(input("change-table-color", "value")),
  function(color) {
    return(color)
  }
)
