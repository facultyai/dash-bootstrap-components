library(dashBootstrapComponents)

nav_link_based <- dbcNav(
  list(
    dbcNavLink("Active", active = TRUE, href = "#"),
    dbcNavLink("A link", href = "#"),
    dbcNavLink("Another link", href = "#"),
    dbcNavLink("Disabled", disabled = TRUE, href = "#")
  )
)
