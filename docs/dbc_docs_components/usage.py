import dash
import dash_html_components as html

import dbc_docs_components

app = dash.Dash(__name__)

app.layout = html.Div(
    [dbc_docs_components.SyntaxHighlighter(id="input",), html.Div(id="output")]
)

if __name__ == "__main__":
    app.run_server(debug=True)
