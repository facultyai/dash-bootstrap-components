library(dashBootstrapComponents)
library(dashHtmlComponents)

nav1 <- dbcNav(
  list(
    dbcNavItem(dbcNavLink("A link", href = "#")),
    dbcNavItem(dbcNavLink("Another link with a longer label", href = "#"))
  ),
  fill = TRUE
)

nav2 <- dbcNav(
  list(
    dbcNavItem(dbcNavLink("A link", href = "#")),
    dbcNavItem(dbcNavLink("Another link with a longer label", href = "#"))
  ),
  justified = TRUE
)

navs <- htmlDiv(list(nav1, htmlHr(), nav2))
