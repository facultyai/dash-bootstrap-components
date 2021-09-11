library(dashBootstrapComponents)
library(dashHtmlComponents)

spinners <- htmlDiv(
  list(
    dbcButton(
      dbcSpinner(size = "sm"),
      color = "primary",
      disabled = TRUE,
      className = "me-1"
    ),
    dbcButton(
      list(dbcSpinner(size = "sm"), " Loading..."),
      color = "primary",
      disabled = TRUE
    )
  )
)
