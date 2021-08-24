library(dashBootstrapComponents)
library(dashHtmlComponents)

tooltip <- htmlDiv(
  list(
    htmlP(
      list(
        "I wonder what ",
        htmlSpan(
          "floccinaucinihilipilification",
          id = "tooltip-target",
          style = list(textDecoration = "underline", cursor = "pointer"),
        ),
        " means?"
      )
    ),
    dbcTooltip(
      paste(
        "Noun: rare,",
        "the action or habit of estimating something as worthless."
      ),
      target = "tooltip-target",
    )
  )
)
