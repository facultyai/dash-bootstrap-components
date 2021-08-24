library(dashBootstrapComponents)

breadcrumb <- dbcBreadcrumb(
  items = list(
    list("label" = "Docs", "href" = "/docs", "external_link" = TRUE),
    list("label" = "Components", "href" = "/docs/components", "external_link" = TRUE),
    list("label" = "Breadcrumb", "active" = TRUE)
  )
)
