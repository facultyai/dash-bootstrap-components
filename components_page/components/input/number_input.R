library(dashBootstrapComponents)
library(dashHtmlComponents)

number_input <- htmlDiv(
  list(
    htmlP("Type a number outside the range 0-10"),
    dbcInput(type = "number", min = 0, max = 10, step = 1)
  ),
  id = "styled-numeric-input",
)
