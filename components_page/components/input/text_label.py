import dash_bootstrap_components as dbc
import dash_html_components as html

text_input = html.Div(
    [
        dbc.Label("Text"),
        dbc.Input(placeholder="Input goes here...", type="text"),
        dbc.FormText("Type something in the box above"),
    ]
)
