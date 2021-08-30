library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

progress <- htmlDiv(
  list(
    dccInterval(id = "progress-interval", n_intervals = 0, interval = 500),
    dbcProgress(id = "progress")
  )
)


app$callback(
  list(
    output("progress", "value"),
    output("progress", "label")
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
