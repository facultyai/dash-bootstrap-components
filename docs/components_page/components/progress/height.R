library(dashBootstrapComponents)
library(dashHtmlComponents)

progress <- htmlDiv(
  list(
    dbcProgress(value = 50, style = list(height =  "1px"), class_name = "mb-3"),
    dbcProgress(value = 50, style = list(height =  "30px"))
  )
)
