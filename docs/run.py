
import dash
import dash_html_components as html
import dash_bootstrap_components as dbc
from flask import Flask, render_template

from app import App
#from components import components_page



server = Flask(__name__)


@server.route('/')
def index():
    return render_template('index.html')


App.from_server(server, '/l/')

if __name__ == '__main__':
    server.run(debug=True, port=8888)
    #app.run_server(debug=True, threaded=True, port=8888)
