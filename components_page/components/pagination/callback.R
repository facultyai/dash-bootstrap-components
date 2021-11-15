library(dashBootstrapComponents)


pagination <- div(
  list(
    div("Select a page", id = "pagination-contents"),
    dbcPagination(
      id = "pagination",
      max_value = 10,
    ),
    div("Or set the page dynamically using the slider below"),
    dccSlider(
      id = "page-change",
      min = 1,
      max = 10,
      step = 1,
      value = 1,
      marks = list(
        "1" = "1",
        "2" = "2",
        "3" = "3",
        "4" = "4",
        "5" = "5",
        "6" = "6",
        "7" = "7",
        "8" = "8",
        "9" = "9",
        "10" = "10"
      )
    )
  )
)


app$callback(
  output("pagination-contents", "children"),
  list(input("pagination", "active_page")),
  function(page) {
    if (page > 0) {
      return(paste("Page selected: ", page))
    }
    return("Select a page")
  }
)

app$callback(
  output("pagination", "active_page"),
  list(input("page-change", "value")),
  function(value) {
    return(value)
  }
)
