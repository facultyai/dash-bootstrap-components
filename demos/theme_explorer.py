import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

app.layout = dbc.Container(
    dbc.Alert("Testing, testing", color="success"), className="p-5"
)

if __name__ == "__main__":
    app.run_server(debug=True)
