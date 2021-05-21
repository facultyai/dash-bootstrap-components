
"
This app creates a simple sidebar layout using inline style arguments and the
dbcNav component.

dccLocation is used to track the current location, and a callback uses the
current location to render the appropriate page content. The active prop of
each NavLink is set automatically according to the current pathname. To use
this feature you must install dash-bootstrap-components >= 0.11.0.

For more details on building multi-page Dash applications, check out the Dash
documentation: https://dash.plot.ly/urls
"


library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)


app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

# the style arguments for the sidebar. We use position:fixed and a fixed width
sidebar_style <- list(
    position = "fixed",
    top =  0,
    left = 0,
    bottom = 0,
    width = "16rem",
    padding = "2rem 1rem",
    backgroundColor = "#f8f9fa"
)

# the styles for the main content position it to the right of the sidebar and
# add some padding.
content_style <- list(
    marginLeft = "18rem",
    marginRight = "2rem",
    padding = "2rem 1rem"
)

sidebar <- htmlDiv(
    list(
        htmlH2("Sidebar", className = "display-4"),
        htmlHr(),
        htmlP(
            "A simple sidebar layout with navigation links", className = "lead"
        ),
        dbcNav(
            list(
                dbcNavLink("Home", href = "/", active = "exact"),
                dbcNavLink("Page 1", href = "/page-1", active = "exact"),
                dbcNavLink("Page 2", href = "/page-2", active = "exact")
            ),
            vertical = TRUE,
            pills = TRUE,
        )
    ),
    style = sidebar_style,
)

content <- htmlDiv(id = "page-content", style = content_style)

app$layout(
  htmlDiv(
    list(dccLocation(id = "url"), sidebar, content)
  )
)


app$callback(
  output("page-content", "children"),
  list(input("url", "pathname")),
  function(pathname) {
    if (pathname == "/") {
        return(htmlP("This is the content of the home page!"))
    } else if (pathname == "/page-1") {
        return(htmlP("This is the content of page 1. Yay!"))
    } else if (pathname == "/page-2") {
        return(htmlP("Oh cool, this is page 2!"))
    } else {
      # If the user tries to reach a different page, return a 404 message
      return(dbcJumbotron(
        list(
            htmlH1("404: Not found", className = "text-danger"),
            htmlHr(),
            htmlP(sprintf(
              "The pathname \"%s\" was not recognized...", pathname))
        )
      ))
    }
  }
)

app$run_server(showcase = TRUE)
