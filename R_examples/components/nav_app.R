
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#-------------- fill

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

navs_fill <- htmlDiv(list(nav1, htmlHr(), nav2))


# --------------link_based

nav_link_based <- dbcNav(
  list(
    dbcNavLink("Active", active = TRUE, href = "#"),
    dbcNavLink("A link", href = "#"),
    dbcNavLink("Another link", href = "#"),
    dbcNavLink("Disabled", disabled = TRUE, href = "#")
  )
)


#----------------navlink

navlink <- htmlDiv(
  list(
    dbcNav(
      list(
        dbcNavLink("Internal link", href = "/l/components/nav"),
        dbcNavLink("External link", href = "https://github.com"),
        dbcNavLink(
            "External relative",
            href = "/l/components/nav",
            external_link = TRUE
        ),
        dbcNavLink("Button", id = "button-link", n_clicks = 0)
      )
    ),
    htmlBr(),
    htmlP(id = "button-clicks")
  )
)


app$callback(
  output("button-clicks", "children"),
  list(input("button-link", "n_clicks")),
  function(n) {
    return(sprintf("Button clicked %d times", n))
  }
)

#----------------pill


nav_pill <- dbcNav(
  list(
    dbcNavItem(dbcNavLink("Active", active = TRUE, href = "#")),
    dbcNavItem(dbcNavLink("A link", href = "#")),
    dbcNavItem(dbcNavLink("Another link", href = "#")),
    dbcNavItem(dbcNavLink("Disabled", disabled = TRUE, href = "#"))
  ),
  pills = TRUE
)


#-----------------simple

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

#-----------------vertical

nav_vertical <- dbcNav(
  list(
    dbcNavItem(dbcNavLink("Active", active = TRUE, href = "#")),
    dbcNavItem(dbcNavLink("A link", href = "#")),
    dbcNavItem(dbcNavLink("Another link", href = "#")),
    dbcNavItem(dbcNavLink("Disabled", disabled = TRUE, href = "#"))
  ),
  vertical = "md"
)

#-----------------

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Navs - Base nav"),
      nav_simple,
      htmlHr(),
      nav_link_based,
      htmlHr(),
      htmlH2("Navs - Using NavLink"),
      navlink,
      htmlHr(),
      htmlH2("Navs - Horizontal Alignment"),
      navs_fill,
      htmlHr(),
      htmlH2("Navs - Vertical stacking"),
      nav_vertical,
      htmlHr(),
      htmlH2("Navs - Pills"),
      nav_pill
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
