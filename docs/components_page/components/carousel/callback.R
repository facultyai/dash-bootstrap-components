library(dashBootstrapComponents)
library(dashHtmlComponents)

carousel <- htmlDiv(
  list(
    dbcCarousel(
      id = "carousel",
      items = list(
        list(key = "1", src = "/static/images/slide1.svg"),
        list(key = "2", src = "/static/images/slide2.svg"),
        list(key = "3", src = "/static/images/slide3.svg")
      ),
      controls = FALSE,
      indicators = FALSE,
      interval = NULL
    ),
    dbcRadioItems(
      id = "slide-number",
      options = list(
        list(label = "Slide 1", value = 0),
        list(label = "Slide 2", value = 1),
        list(label = "Slide 3", value = 2)
      ),
      value = 0,
      inline = TRUE
    )
  )
)

app$callback(
  output("carousel", "active_index"),
  list(input("slide-number", "value")),
  function(idx) {
    return(idx)
  }
)
