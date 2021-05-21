

library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#-------------- placement

make_button <- function(placement){
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
      target=sprintf("tooltip-target-%s", placement),
      placement = placement
    )
  )
}


tooltips_direction <- htmlDiv(
  list(
    make_button("top"), make_button("left"),
    make_button("right"), make_button("bottom"),
    make_tooltip("top"), make_tooltip("left"),
    make_tooltip("right"), make_tooltip("bottom")
  )
)

# ----------- toolitp


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
      "Noun: rare,
      the action or habit of estimating something as worthless.",
      target = "tooltip-target",
    )
)

)

# ------------------



app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Tooltip Simple example"),
      tooltip,
      htmlHr(),
      htmlH2("Tooltip - Position"),
      tooltips_direction
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
