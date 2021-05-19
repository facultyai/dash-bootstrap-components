

library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#-------------- animated

progress_animated <- htmlDiv(
  list(
    dbcProgress(
      value = 80, id = "animated-progress", striped = TRUE, animated = FALSE
    ),
    dbcButton(
      "Toggle animation", id = "animation-toggle", n_clicks = 0,
      className = "mt-3"
    )
  )
)


app$callback(
  output("animated-progress", "animated"),
  list(
    input("animation-toggle", "n_clicks"),
    state("animated-progress", "animated")
  ),
  function(n, animated) {
    if (n > 0) {
      return(!animated)
    }
    return(animated)
  }
)

# ------------- background

progress_background <- htmlDiv(
  list(
    dbcProgress(value = 25, color = "success", className = "mb-3"),
    dbcProgress(value = 50, color = "warning", className = "mb-3"),
    dbcProgress(value = 75, color = "danger", className = "mb-3"),
    dbcProgress(value = 100, color = "info")
  )
)

# ------------- height

progress_height <- htmlDiv(
  list(
    dbcProgress(value = 50, style = list(height =  "1px"), className = "mb-3"),
    dbcProgress(value = 50, style = list(height =  "30px"))
  )
)

# ------------- interval

progress_interval <- htmlDiv(
  list(
    dccInterval(id = "progress-interval", n_intervals = 0, interval = 500),
    dbcProgress(id = "progress")
  )
)


app$callback(
  list(
    output("progress", "value"),
    output("progress", "children")
  ),
  list(input("progress-interval", "n_intervals")),
  function(n) {
    # check progress of some background process, in this example we'll just
    # use n_intervals constrained to be in 0-100
    progress <- min(n %% 110, 100)
    print(n)
    print(progress)
    # only add text after 5% progress to ensure text isn't squashed too much
    if (progress >= 5) {
      return(list(progress, sprintf("%d %%", progress)))
    }
    return(list(progress, ""))
  }
)
# ------------- labels

progress_labels <- dbcProgress("25%", value = 25)

# ------------- multiple


progress_multiple <- dbcProgress(
  list(
    dbcProgress(valu = 20, color = "success", bar = TRUE),
    dbcProgress(value = 30, color = "warning", bar = TRUE),
    dbcProgress(value = 20, color = "danger", bar = TRUE)
  ),
  multi = TRUE
)

# ------------- progress


progress <- dbcProgress(value = 50)

# ------------- stripes

progress_stripes <- dbcProgress(value = 75, striped = TRUE)

# -------------



app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Progress - Simple example"),
      progress,
      htmlHr(),
      htmlH2("Progress - Labels"),
      progress_labels,
      htmlHr(),
      htmlH2("Progress - Height"),
      progress_height,
      htmlHr(),
      htmlH2("Progress - Backgrounds"),
      progress_background,
      htmlHr(),
      htmlH2("Progress Mulitple Bars"),
      progress_multiple,
      htmlHr(),
      htmlH2("Progress Striped bars"),
      progress_stripes,
      htmlHr(),
      htmlH2("Progress Animated Stripes"),
      progress_animated,
      htmlHr(),
      htmlH2("Progress with interval"),
      progress_interval
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
