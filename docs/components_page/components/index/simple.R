# 1. Import Dash
library(dash)
library(dashBootstrapComponents)

# 2. Create a Dash app instance
app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

# 3. Add the example to the app's layout
# First we copy the snippet from the docs
badge <- dbcButton(
  list(
    "Notifications",
    dbcBadge("4", color = "light", text_color = "primary", className = "ms-1")
  ),
  color = "primary"
)

# Then we incorporate the snippet into our layout.
# This example keeps it simple and just wraps it in a Container
app$layout(dbcContainer(badge, fluid = TRUE))

# 5. Start the Dash server
app$run_server(port = 8050)
