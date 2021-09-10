library(dashBootstrapComponents)
library(dashHtmlComponents)

make_button <- function(placement) {
  return(
    dbcButton(
      sprintf("Tooltip on %s", placement),
      id = sprintf("tooltip-target-%s", placement),
      n_clicks = 0,
      className = "mx-2"
    )
  )
}


make_tooltip <- function(placement) {
  return(
    dbcTooltip(
      sprintf("Tooltip on %s", placement),
      target = sprintf("tooltip-target-%s", placement),
      placement = placement
    )
  )
}


tooltips <- htmlDiv(
  list(
    make_button("top"), make_button("left"),
    make_button("right"), make_button("bottom"),
    make_tooltip("top"), make_tooltip("left"),
    make_tooltip("right"), make_tooltip("bottom")
  )
)
