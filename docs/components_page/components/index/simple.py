# 1. Import Dash
import dash
import dash_bootstrap_components as dbc

# 2. Create a Dash app instance
app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

# 3. Add the example to the app's layout
# First we copy the snippet from the docs
badge = dbc.Button(
    [
        "Notifications",
        dbc.Badge("4", color="light", text_color="primary", className="ms-1"),
    ],
    color="primary",
)

# Then we incorporate the snippet into our layout.
# This example keeps it simple and just wraps it in a Container
app.layout = dbc.Container(badge, fluid=True)

# 5. Start the Dash server
if __name__ == "__main__":
    app.run_server()
