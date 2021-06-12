library(dashBootstrapComponents)

nav <- dbcNav(
  list(
    dbcNavItem(dbcNavLink("Active", active = TRUE, href = "#")),
    dbcNavItem(dbcNavLink("A link", href = "#")),
    dbcNavItem(dbcNavLink("Another link", href = "#")),
    dbcNavItem(dbcNavLink("Disabled", disabled = TRUE, href = "#"))
  ),
  pills = TRUE
)
