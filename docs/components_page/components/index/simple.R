# 1. Import Dash
library(dash)
library(dashBootstrapComponents)

# 2. Create a Dash app instance
app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

# 3. Add the example
badge <- dbcButton(
  list(
    "Notifications",
    dbcBadge("4", color = "light", text_color = "primary", className = "ms-1"),
  ),
  color = "primary"
)

# 4. Assign your layout to the app layout
app$layout(badge)

# 5. Start the Dash server
app$run_server(showcase = TRUE)
