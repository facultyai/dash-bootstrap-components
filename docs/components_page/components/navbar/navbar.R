library(dashBootstrapComponents)
library(dashHtmlComponents)

PLOTLY_LOGO <- "https://images.plot.ly/logo/new-branding/plotly-logomark.png"

search_bar <- dbcRow(
  list(
    dbcCol(dbcInput(type = "search", placeholder = "Search")),
    dbcCol(
      dbcButton(
        "Search",
        color = "primary", n_clicks = 0, class_name = "ms-2"
      ),
      width = "auto"
    )
  ),
  class_name = "ms-auto flex-nowrap mt-3 mt-md-0 g-0",
  align = "center"
)

navbar <- dbcNavbar(
  dbcContainer(
    list(
      htmlA(
        # Use row and col to control vertical alignment of logo / brand
        dbcRow(
          list(
            dbcCol(htmlImg(src = PLOTLY_LOGO, height = "30px")),
            dbcCol(dbcNavbarBrand("Navbar", class_name = "ms-2"))
          ),
          align = "center",
          class_name = "g-0"
        ),
        href = "https://plotly.com",
        style = list("textDecoration" = "none")
      ),
      htmlDiv(
        list(
          dbcNavbarToggler(id = "navbar-toggler", n_clicks = 0),
          dbcCollapse(
            search_bar,
            id = "navbar-collapse",
            is_open = FALSE,
            navbar = TRUE
          )
        ),
        class_name = "ms-auto"
      )
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
