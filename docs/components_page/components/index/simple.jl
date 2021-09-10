# 1. Import Dash
using Dash, DashBootstrapComponents

# 2. Create a Dash app instance
app = dash(external_stylesheets = [dbc_themes.BOOTSTRAP])

# 3. Add the example
badge = dbc_button(
    [
        "Notifications",
        dbc_badge("4", color = "light", text_color = "primary", className = "ms-1"),
    ],
    color = "primary",
)

# 4. Assign your layout to the app layout
app.layout = badge

# 5. Start the Dash server
run_server(app, "0.0.0.0", 8080)
