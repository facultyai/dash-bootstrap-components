library(dashBootstrapComponents)

select <- dbcSelect(
  id = "select",
  options = list(
    list(label = "Option 1", value = "1"),
    list(label = "Option 2", value = "2"),
    list(label = "Disabled option", value = "3", disabled = TRUE)
  )
)
