library(dashBootstrapComponents)
library(dashHtmlComponents)

toast_simple <- dbcToast(
  list(
    htmlP("This is the content of the toast", className = "mb-0")
  ),
  header = "This is the header",
)
