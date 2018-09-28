
import dash_html_components as html
import dash
from flask import Flask, render_template


server = Flask(__name__)


@server.route('/')
def index():
    return render_template('index.html')


app = dash.Dash(
    __name__,
    server=server,
    routes_pathname_prefix='/l/'
)


app.layout = html.Div([
    html.H1('Hello docs')
])


app.index_string = open('./index.html.tpl').read()


if __name__ == '__main__':
    app.run_server(debug=True, threaded=True, port=8888)
