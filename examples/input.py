import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html

app = dash.Dash()

app.layout = dbc.Container(
    [
        html.H1("Input test"),
        html.P("There's something weird going on with my input components..."),
        dbc.Form(
            [
                dbc.FormGroup(
                    [
                        dbc.Label("Field 1", className="mr-sm-1"),
                        dbc.Input(type="text"),
                    ],
                    className="mr-sm-2",
                ),
                dbc.FormGroup(
                    [
                        dbc.Label("Field 2", className="mr-sm-1"),
                        dbc.Input(type="text"),
                    ]
                ),
            ],
            inline=True,
        ),
    ]
)

if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
