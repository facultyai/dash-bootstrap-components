library(dashBootstrapComponents)
library(dashHtmlComponents)

badges <- htmlDiv(
  list(
    htmlH1(list("Example heading", dbcBadge("New", class_name = "ms-1"))),
    htmlH2(list("Example heading", dbcBadge("New", class_name = "ms-1"))),
    htmlH3(list("Example heading", dbcBadge("New", class_name = "ms-1"))),
    htmlH4(list("Example heading", dbcBadge("New", class_name = "ms-1"))),
    htmlH5(list("Example heading", dbcBadge("New", class_name = "ms-1"))),
    htmlH6(list("Example heading", dbcBadge("New", class_name = "ms-1")))
  )
)
