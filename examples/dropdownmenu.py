import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

app.layout = dbc.Container(
    dbc.DropdownMenu(
        [dbc.DropdownMenuItem("Item 1"), dbc.DropdownMenuItem("Item 2")],
        label="DropdownMenu",
        color="warning",
        toggle_style={"color": "#1133dd"},
        toggleClassName="p-4",
    ),
    className="p-5",
)

if __name__ == "__main__":
    app.run_server(debug=True)
