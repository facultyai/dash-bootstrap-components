# 1. Import Dash
using Dash, DashBootstrapComponents

# 2. Create a Dash app instance
app = dash(external_stylesheets = [dbc_themes.BOOTSTRAP])

# 3. Add the example to the app's layout
# First we copy the snippet from the docs
badge = dbc_button(
    [
        "Notifications",
        dbc_badge("4", color = "light", text_color = "primary", className = "ms-1"),
    ],
    color = "primary",
)

# Then we incorporate the snippet into our layout.
# This example keeps it simple and just wraps it in a Container
app.layout = dbc_container(badge, fluid = true)

# 5. Start the Dash server
run_server(app, "0.0.0.0", 8050)
