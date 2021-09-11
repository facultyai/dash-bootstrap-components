library(dashBootstrapComponents)
library(dashHtmlComponents)

popover_children <- list(
  dbcPopoverHeader("Popover header"),
  dbcPopoverBody("And here's some amazing content. Cool!")
)

popovers <- htmlDiv(
  list(
    dbcButton(
      "Click",
      id = "click-target", n_clicks = 0,
      color = "danger", className = "me-1"
    ),
    dbcPopover(
      popover_children,
      id = "click",
      target = "click-target",
      trigger = "click"
    ),
    dbcButton(
      "Focus",
      id = "focus-target", n_clicks = 0,
      color = "danger", className = "me-1"
    ),
    dbcPopover(
      popover_children,
      id = "focus",
      target = "focus-target",
      trigger = "focus"
    ),
    dbcButton(
      "Hover",
      id = "hover-target", n_clicks = 0,
      color = "danger", className = "me-1"
    ),
    dbcPopover(
      popover_children,
      id = "hover",
      target = "hover-target",
      trigger = "hover",
    ),
    dbcButton("Legacy",
      id = "legacy-target", n_clicks = 0,
      color = "danger"
    ),
    dbcPopover(
      popover_children,
      id = "legacy",
      target = "legacy-target",
      trigger = "legacy"
    )
  )
)
