library(dashBootstrapComponents)
library(dashHtmlComponents)

varying_size_badges <- htmlDiv(
  list(
    htmlH1(list("Example heading", dbcBadge("New", className = "ml-1"))),
    htmlH2(list("Example heading", dbcBadge("New", className = "ml-1"))),
    htmlH3(list("Example heading", dbcBadge("New", className = "ml-1"))),
    htmlH4(list("Example heading", dbcBadge("New", className = "ml-1"))),
    htmlH5(list("Example heading", dbcBadge("New", className = "ml-1"))),
    htmlH6(list("Example heading", dbcBadge("New", className = "ml-1")))
  )
)
