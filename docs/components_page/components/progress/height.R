library(dashBootstrapComponents)
library(dashHtmlComponents)

progress_height <- htmlDiv(
  list(
    dbcProgress(value = 50, style = list(height =  "1px"), className = "mb-3"),
    dbcProgress(value = 50, style = list(height =  "30px"))
  )
)
