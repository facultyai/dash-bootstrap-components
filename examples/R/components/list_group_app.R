
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#-------------- active

list_group_active <- dbcListGroup(
  list(
    dbcListGroupItem("Active item", active = TRUE),
    dbcListGroupItem("Item 2"),
    dbcListGroupItem("Item 3")
  )
)

# ----------- colors

list_group_colors <- dbcListGroup(
  list(
    dbcListGroupItem("The primary item", color = "primary"),
    dbcListGroupItem("A secondary item", color = "secondary"),
    dbcListGroupItem("A successful item", color = "success"),
    dbcListGroupItem("A warning item", color = "warning"),
    dbcListGroupItem("A dangerous item", color = "danger"),
    dbcListGroupItem("An informative item", color = "info")
  )
)

# ---------- content

list_group_content <- dbcListGroup(
  list(
    dbcListGroupItem(
      list(
        dbcListGroupItemHeading("This item has a heading"),
        dbcListGroupItemText("And some text underneath")
      )
    ),
    dbcListGroupItem(
      list(
        dbcListGroupItemHeading("This item also has a heading"),
        dbcListGroupItemText("And some more text underneath too")
      )
    )
  )
)

# ---------- horizontal

list_group_horizontal <- htmlDiv(
  list(
    dbcListGroup(
      list(
        dbcListGroupItem("Item 1"),
        dbcListGroupItem("Item 2"),
        dbcListGroupItem("Item 3")
      ),
      horizontal = TRUE,
      className = "mb-2",
    ),
    dbcListGroup(
      list(
        dbcListGroupItem("Item 1"),
        dbcListGroupItem("Item 2"),
        dbcListGroupItem("Item 3")
      ),
      horizontal = "lg",
    )
  )
)

# ------------ links


list_group_links <- htmlDiv(
  list(
    dbcListGroup(
      list(
        dbcListGroupItem(
        "Internal link", href = "/l/components/list_group"
        ),
        dbcListGroupItem("External link", href = "https://google.com"),
        dbcListGroupItem(
          "Disabled link", href = "https://google.com", disabled = TRUE
        ),
        dbcListGroupItem(
          "Button", id = "button-item", n_clicks = 0, action = TRUE
        )
      )
    ),
    htmlP(id = "counter")
  )
)


app$callback(
  output("counter", "children"),
  list(input("button-item", "n_clicks")),
  function(n) {
    return(sprintf("Button clicked %d times", n))
  }
)


# -------------- simple


list_group_simple <- dbcListGroup(
  list(
    dbcListGroupItem("Item 1"),
    dbcListGroupItem("Item 2"),
    dbcListGroupItem("Item 3")
  )
)

# ---------------

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("ListGroup Simple example"),
      list_group_simple,
      htmlHr(),
      htmlH2("ListGroup Active items"),
      list_group_active,
      htmlHr(),
      htmlH2("ListGroup Links"),
      list_group_links,
      htmlHr(),
      htmlH2("ListGroup Colors"),
      list_group_colors,
      htmlHr(),
      htmlH2("ListGroup Custom content"),
      list_group_content,
      htmlHr(),
      htmlH2("ListGroup Horizontal"),
      list_group_horizontal
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
