library(dashBootstrapComponents)
library(dashHtmlComponents)

toast <- dbcToast(
  list(
    htmlP("This is the content of the toast", class_name = "mb-0")
  ),
  header = "This is the header",
)
