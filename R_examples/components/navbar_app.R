
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#-------------- navbar

PLOTLY_LOGO <- "https://images.plot.ly/logo/new-branding/plotly-logomark.png"

search_bar <- dbcRow(
  list(
    dbcCol(dbcInput(type = "search", placeholder = "Search")),
    dbcCol(
      dbcButton(
        "Search", color = "primary", n_clicks = 0, className = "ml-2"
      ),
      width = "auto"
    )
  ),
  no_gutters = TRUE,
  className = "ml-auto flex-nowrap mt-3 mt-md-0",
  align = "center",
)

navbar <- dbcNavbar(
  list(
    htmlA(
      # Use row and col to control vertical alignment of logo / brand
      dbcRow(
        list(
          dbcCol(htmlImg(src = PLOTLY_LOGO, height = "30px")),
          dbcCol(dbcNavbarBrand("Navbar", className = "ml-2"))
        ),
        align = "center",
        no_gutters = TRUE
      ),
      href = "https://plot.ly"
    ),
    dbcNavbarToggler(id = "navbar-toggler", n_clicks = 0),
    dbcCollapse(
      search_bar, id = "navbar-collapse", is_open = FALSE, navbar = TRUE
    )
  ),
  color = "dark",
  dark = TRUE
)


# add callback for toggling the collapse on small screens
app$callback(
  output("navbar-collapse", "is_open"),
  list(
    input("navbar-toggler", "n_clicks"),
    state("navbar-collapse", "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)

# ----------- simple

navbar_simple <- dbcNavbarSimple(
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

#------------------

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Navbar Simple"),
      navbar_simple,
      htmlHr(),
      htmlH2("Navbar"),
      navbar
    ),
  className = "p-5")
)

app$run_server(debug = TRUE)
