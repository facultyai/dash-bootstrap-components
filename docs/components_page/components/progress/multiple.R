library(dashBootstrapComponents)

progress <- dbcProgress(
  list(
    dbcProgress(valu = 20, color = "success", bar = TRUE),
    dbcProgress(value = 30, color = "warning", bar = TRUE),
    dbcProgress(value = 20, color = "danger", bar = TRUE)
  )
)
