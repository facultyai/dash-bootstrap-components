import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

input_group = html.Div(
    [
        html.H4("Button"),
        html.Div(
            [
                dbc.InputGroup(
                    [
                        dbc.InputGroupAddon(
                            dbc.Button("Random name", id="input-group-button"),
                            addon_type="prepend",
                        ),
                        dbc.Input(
                            id="input-group-button-input", placeholder="name"
                        ),
                    ]
                )
            ]
        ),
    ]
)


@app.callback(
    Output("input-group-button-input", "value"),
    [Input("input-group-button", "n_clicks")],
)
def on_button_click(n_clicks):
    if n_clicks:
        names = ["Arthur Dent", "Ford Prefect", "Trillian Astra"]
        which = n_clicks % len(names)
        return names[which]
    else:
        return ""
