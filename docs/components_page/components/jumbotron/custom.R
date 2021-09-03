library(dashBootstrapComponents)
library(dashHtmlComponents)

left_jumbotron <- dbcCol(
  htmlDiv(
    list(
      htmlH2("Change the background", class_name = "display-3"),
      htmlHr(class_name = "my-2"),
      htmlP(
        paste(
          "Swap the background-color utility and add a `.text-*` color",
          "utility to mix up the look."
        )
      ),
      dbcButton("Example Button", color = "light", outline = TRUE)
    ),
    class_name = "h-100 p-5 text-white bg-dark rounded-3"
  ),
  md = 6
)

right_jumbotron <- dbcCol(
  htmlDiv(
    list(
      htmlH2("Add borders", class_name = "display-3"),
      htmlHr(class_name = "my-2"),
      htmlP(
        paste(
          "Or, keep it light and add a border for some added definition",
          "to the boundaries of your content."
        )
      ),
      dbcButton("Example Button", color = "secondary", outline = TRUE)
    ),
    class_name = "h-100 p-5 bg-light border rounded-3"
  ),
  md = 6
)

jumbotron <- dbcRow(
  list(left_jumbotron, right_jumbotron),
  class_name = "align-items-md-stretch"
)
