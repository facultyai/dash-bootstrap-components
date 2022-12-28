import dash_bootstrap_components as dbc
from dash import Dash

app = Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

test_content = dbc.Alert("Use this as a test playground", color="success")

app.layout = dbc.Container(test_content, className="p-5")

if __name__ == "__main__":
    app.run_server(debug=True)
