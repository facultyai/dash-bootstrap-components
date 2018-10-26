import dash_bootstrap_components as dbc
import dash_html_components as html

from dash.dependencies import Input, Output

button = html.Div(
    [
        html.H4("Using buttons"),
        dbc.Button("Click me", id="example-button"),
        html.Span(id="example-output", className="ml-2"),
    ]
)


@app.callback(
    Output("example-output", "children"), [Input("example-button", "n_clicks")]
)
def on_button_click(n):
    if n is None:
        return "Not clicked."
    else:
        return f"Clicked {n} times."
