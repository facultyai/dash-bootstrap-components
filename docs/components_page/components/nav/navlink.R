library(dashBootstrapComponents)

nav <- div(
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
    br(),
    p(id = "button-clicks")
  )
)


app$callback(
  output("button-clicks", "children"),
  list(input("button-link", "n_clicks")),
  function(n) {
    return(sprintf("Button clicked %d times", n))
  }
)
