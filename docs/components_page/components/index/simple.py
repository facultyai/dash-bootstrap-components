# 1. Import Dash
import dash
import dash_bootstrap_components as dbc

# 2. Create a Dash app instance
app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

# 3. Add the example
badge = dbc.Button(
    [
        "Notifications",
        dbc.Badge("4", color="light", text_color="primary", className="ms-1"),
    ],
    color="primary",
)

# 4. Assign your layout to the app layout
app.layout = badge

# 5. Start the Dash server
if __name__ == "__main__":
    app.run_server()
