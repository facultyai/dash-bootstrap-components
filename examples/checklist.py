import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

app.layout = dbc.Container(
    dbc.Checklist(
        options=[
            {"label": "Hi", "value": "hi"},
            {"label": "Bye", "value": "bye"},
        ]
    )
)

if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
