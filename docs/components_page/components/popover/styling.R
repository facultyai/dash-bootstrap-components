library(dashBootstrapComponents)
library(dashHtmlComponents)

popovers <- htmlDiv(
  list(
    dbcButton(
      "Hidden Arrow",
      id = "hide-arrow-target",
      className = "me-1",
      n_clicks = 0,
    ),
    dbcPopover(
      "I am a popover without an arrow!",
      target = "hide-arrow-target",
      trigger = "legacy",
      hide_arrow = TRUE
    ),
    dbcButton(
      "Offset Popover",
      id = "offset-target",
      n_clicks = 0,
    ),
    dbcPopover(
      "I am a popover that's been offset!",
      target = "offset-target",
      trigger = "legacy",
      hide_arrow = TRUE,
      offset = "50,20"
    )
  )
)
