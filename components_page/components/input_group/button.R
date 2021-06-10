library(dashBootstrapComponents)

input_group_button <- dbcInputGroup(
  list(
    dbcInputGroupAddon(
      dbcButton("Random name", id = "input-group-button", n_clicks = 0),
      addon_type = "prepend",
    ),
    dbcInput(id = "input-group-button-input", placeholder = "name")
  )
)


app$callback(
  output("input-group-button-input", "value"),
  list(input("input-group-button", "n_clicks")),
  function(n_clicks) {
    if (n_clicks > 0) {
      names <- c("Arthur Dent", "Ford Prefect", "Trillian Astra")
      return(sample(names, 1))

    }
    return("")
  }
)
