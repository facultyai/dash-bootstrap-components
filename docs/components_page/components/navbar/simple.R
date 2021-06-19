library(dashBootstrapComponents)

navbar <- dbcNavbarSimple(
  list(
    dbcNavItem(dbcNavLink("Page 1", href = "#")),
    dbcDropdownMenu(
      list(
        dbcDropdownMenuItem("More pages", header = TRUE),
        dbcDropdownMenuItem("Page 2", href = "#"),
        dbcDropdownMenuItem("Page 3", href = "#")
      ),
      nav = TRUE,
      in_navbar = TRUE,
      label = "More"
    )
  ),
  brand = "NavbarSimple",
  brand_href = "#",
  color = "primary",
  dark = TRUE,
)
