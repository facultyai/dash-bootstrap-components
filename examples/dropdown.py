import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

app.layout = dbc.Container(
    dbc.DropdownMenu(
        [dbc.DropdownMenuItem("Item 1")], label="Menu", direction="up"
    ),
    className="mt-5 pt-5",
)

if __name__ == "__main__":
    app.run_server(debug=True)
