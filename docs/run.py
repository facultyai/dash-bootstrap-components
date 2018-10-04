
import dash
import dash_html_components as html
import dash_bootstrap_components as dbc
from flask import Flask, render_template

from components import components_page


GITHUB_LINK = "https://github.com/ASIDataScience/dash-bootstrap-components"
BOOTSTRAP_CSS = (
    "https://stackpath.bootstrapcdn.com/"
    "bootstrap/4.1.3/css/bootstrap.min.css"
)

server = Flask(__name__)


@server.route('/')
def index():
    return render_template('index.html')


app = dash.Dash(
    __name__,
    server=server,
    routes_pathname_prefix="/l/",
    external_stylesheets=[BOOTSTRAP_CSS]
)


navbar = dbc.Navbar(
    brand="Dash Bootstrap Components",
    brand_href="/",
    brand_external_link=True,
    sticky="top",
    children=[
        dbc.NavItem(
            dbc.NavLink(
                "GitHub",
                href=GITHUB_LINK
            )
        )
    ]
)


app.layout = html.Div([
    navbar,
    components_page
])


if __name__ == '__main__':
    app.run_server(debug=True, threaded=True, port=8888)
