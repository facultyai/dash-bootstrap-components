library(dashBootstrapComponents)

nav_contents <- list(
  dbcNavItem(dbcNavLink("Active", href = "#", active = TRUE)),
  dbcNavItem(dbcNavLink("A much longer link label", href = "#")),
  dbcNavItem(dbcNavLink("Link", href = "#"))
)

nav1 <- dbcNav(nav_contents, pills = TRUE, fill = TRUE)

nav2 <- dbcNav(nav_contents, pills = TRUE, justified = TRUE)

navs <- div(list(nav1, html$hr(), nav2))
