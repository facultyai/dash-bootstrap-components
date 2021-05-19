
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)


badge_simple <- dbcButton(
  list(
    "Notifications",
    dbcBadge("4", color = "light", className = "ml-1")
  ),
  color = "primary",
)

badges_size <- htmlDiv(
  list(
    htmlH1(list("Example heading", dbcBadge("New", className = "ml-1"))),
    htmlH2(list("Example heading", dbcBadge("New", className = "ml-1"))),
    htmlH3(list("Example heading", dbcBadge("New", className = "ml-1"))),
    htmlH4(list("Example heading", dbcBadge("New", className = "ml-1"))),
    htmlH5(list("Example heading", dbcBadge("New", className = "ml-1"))),
    htmlH6(list("Example heading", dbcBadge("New", className = "ml-1")))
  )
)

badges_pills <- htmlSpan(
  list(
    dbcBadge("Primary", pill = TRUE, color = "primary", className = "mr-1"),
    dbcBadge("Secondary", pill = TRUE, color = "secondary", className = "mr-1"),
    dbcBadge("Success", pill = TRUE, color = "success", className = "mr-1"),
    dbcBadge("Warning", pill = TRUE, color = "warning", className = "mr-1"),
    dbcBadge("Danger", pill = TRUE, color = "danger", className = "mr-1"),
    dbcBadge("Info", pill = TRUE, color = "info", className = "mr-1"),
    dbcBadge("Light", pill = TRUE, color = "light", className = "mr-1"),
    dbcBadge("Dark", pill = TRUE, color = "dark")
  )
)

badges_links <- htmlSpan(
  list(
    dbcBadge("Primary", href = "#", color = "primary", className = "mr-1"),
    dbcBadge("Secondary", href = "#", color = "secondary", className = "mr-1"),
    dbcBadge("Success", href = "#", color = "success", className = "mr-1"),
    dbcBadge("Warning", href = "#", color = "warning", className = "mr-1"),
    dbcBadge("Danger", href = "#", color = "danger", className = "mr-1"),
    dbcBadge("Info", href = "#", color = "info", className = "mr-1"),
    dbcBadge("Light", href = "#", color = "light", className = "mr-1"),
    dbcBadge("Dark", href = "#", color = "dark")
  )
)

badges_color <- htmlSpan(
  list(
    dbcBadge("Primary", color = "primary", className = "mr-1"),
    dbcBadge("Secondary", color = "secondary", className = "mr-1"),
    dbcBadge("Success", color = "success", className = "mr-1"),
    dbcBadge("Warning", color = "warning", className = "mr-1"),
    dbcBadge("Danger", color = "danger", className = "mr-1"),
    dbcBadge("Info", color = "info", className = "mr-1"),
    dbcBadge("Light", color = "light", className = "mr-1"),
    dbcBadge("Dark", color = "dark")
  )
)



app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Badges Simple example"),
      badge_simple,
      htmlHr(),
      htmlH2("Badges Sizing"),
      badges_size,
      htmlHr(),
      htmlH2("Conteztul variations"),
      badges_color,
      htmlHr(),
      htmlH2("Pill Badges "),
      badges_pills,
      htmlHr(),
      htmlH2("Badges Links"),
      badges_links
    ),
    className = "p-5")
)

app$run_server(showcase = TRUE)