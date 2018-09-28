
import dash_html_components as html
import dash


app = dash.Dash(__name__)


app.layout = html.Div([
    html.H1('Hello docs')
])


app.index_string = open('./index.html.tpl').read()


if __name__ == '__main__':
    app.run_server(debug=True, threaded=True, port=8888)
