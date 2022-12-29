library(dashBootstrapComponents)

popover_children <- "I am a popover!"

popovers <- div(
  list(
    dbcButton(
      "Click",
      id = "click-target", n_clicks = 0,
      color = "danger", className = "me-1"
    ),
    dbcPopover(
      popover_children,
      target = "click-target",
      body = TRUE,
      trigger = "click"
    ),
    dbcButton(
      "Focus",
      id = "focus-target", n_clicks = 0,
      color = "danger", className = "me-1"
    ),
    dbcPopover(
      popover_children,
      target = "focus-target",
      body = TRUE,
      trigger = "focus"
    ),
    dbcButton(
      "Hover",
      id = "hover-target", n_clicks = 0,
      color = "danger", className = "me-1"
    ),
    dbcPopover(
      popover_children,
      target = "hover-target",
      body = TRUE,
      trigger = "hover"
    ),
    dbcButton("Legacy",
      id = "legacy-target", n_clicks = 0,
      color = "danger"
    ),
    dbcPopover(
      popover_children,
      target = "legacy-target",
      body = TRUE,
      trigger = "legacy"
    )
  )
)
