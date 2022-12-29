library(dashBootstrapComponents)

carousel <- dbcCarousel(
  items = list(
    list(
      key = "1",
      src = "/static/images/slide1.svg",
      header = "With header ",
      caption = "and caption"
    ),
    list(
      key = "2",
      src = "/static/images/slide2.svg",
      header = "With header only",
      caption = ""
    ),
    list(
      key = "3",
      src = "/static/images/slide3.svg",
      header = "",
      caption = "This slide has a caption only"
    )
  )
)
