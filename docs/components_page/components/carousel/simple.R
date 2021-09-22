library(dashBootstrapComponents)

carousel <- dbcCarousel(
  items = list(
    list(key = "1", src = "/static/images/slide1.svg"),
    list(key = "2", src = "/static/images/slide2.svg"),
    list(key = "3", src = "/static/images/slide3.svg")
  ),
  controls = FALSE,
  indicators = FALSE,
  interval = 2000,
  ride = "carousel"
)
