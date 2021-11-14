library(dashBootstrapComponents)

tooltip <- div(
  list(
    p(
      list(
        "I wonder what ",
        span(
          "floccinaucinihilipilification",
          id = "tooltip-target",
          style = list(textDecoration = "underline", cursor = "pointer")
        ),
        " means?"
      )
    ),
    dbcTooltip(
      paste(
        "Noun: rare,",
        "the action or habit of estimating something as worthless."
      ),
      target = "tooltip-target"
    )
  )
)
