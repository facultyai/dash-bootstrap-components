import dash
import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

app = dash.Dash(external_stylesheets=[dbc.themes.FLATLY])

app.layout = dbc.Container(
    [
        dbc.FormGroup(
            [
                dbc.Label("Regular"),
                dbc.Textarea(id="default"),
                dbc.FormText("No default styles"),
                html.P(id="default-output"),
            ]
        ),
        dbc.FormGroup(
            [
                dbc.Label("Small"),
                dbc.Textarea(id="small", bs_size="sm"),
                dbc.FormText("Small sized text area"),
                html.P(id="small-output"),
            ]
        ),
        dbc.FormGroup(
            [
                dbc.Label("Large"),
                dbc.Textarea(id="large", bs_size="lg"),
                dbc.FormText("Large sized textarea"),
                html.P(id="large-output"),
            ]
        ),
        dbc.FormGroup(
            [
                dbc.Label("Valid"),
                dbc.Textarea(id="valid"),
                dbc.FormText("Type at least one character"),
                dbc.FormFeedback("You typed a thing!", valid=True),
            ]
        ),
        dbc.FormGroup(
            [
                dbc.Label("Invalid"),
                dbc.Textarea(id="invalid"),
                dbc.FormText("Don't type anything"),
                dbc.FormFeedback("I said don't type anything!"),
            ]
        ),
    ]
)


def return_text(text):
    return text


app.callback(
    Output("default-output", "children"), [Input("default", "value")]
)(return_text)
app.callback(Output("small-output", "children"), [Input("small", "value")])(
    return_text
)
app.callback(Output("large-output", "children"), [Input("large", "value")])(
    return_text
)


@app.callback(Output("valid", "valid"), [Input("valid", "value")])
def set_valid(text):
    if text:
        return True
    return False


@app.callback(Output("invalid", "invalid"), [Input("invalid", "value")])
def set_invalid(text):
    if text:
        return True
    return False


if __name__ == "__main__":
    app.run_server(debug=True)
