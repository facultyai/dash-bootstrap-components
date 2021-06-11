library(dashBootstrapComponents)
library(dashHtmlComponents)

spinners_button <- htmlDiv(
  list(
    dbcButton(
        dbcSpinner(size = "sm"),
        color = "primary",
        disabled = TRUE,
        className = "mr-1"
    ),
    dbcButton(
      list(dbcSpinner(size = "sm"), " Loading..."),
      color = "primary",
      disabled = TRUE
    )
  )
)
