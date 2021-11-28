library(dashBootstrapComponents)

badges <- div(
  list(
    h1(list("Example heading", dbcBadge("New", className = "ms-1"))),
    h2(list("Example heading", dbcBadge("New", className = "ms-1"))),
    h3(list("Example heading", dbcBadge("New", className = "ms-1"))),
    h4(list("Example heading", dbcBadge("New", className = "ms-1"))),
    html$h5(list("Example heading", dbcBadge("New", className = "ms-1"))),
    html$h6(list("Example heading", dbcBadge("New", className = "ms-1")))
  )
)
