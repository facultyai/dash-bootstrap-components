library(dashBootstrapComponents)

nav_simple <- dbcNav(
  list(
    dbcNavItem(dbcNavLink("Active", active = TRUE, href = "#")),
    dbcNavItem(dbcNavLink("A link", href = "#")),
    dbcNavItem(dbcNavLink("Another link", href = "#")),
    dbcNavItem(dbcNavLink("Disabled", disabled = TRUE, href = "#")),
    dbcDropdownMenu(
      list(
        dbcDropdownMenuItem("Item 1"),
        dbcDropdownMenuItem("Item 2")
      ),
      label = "Dropdown",
      nav = TRUE
    )
  )
)
