
import dash_html_components as html
import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
from flask import Flask, render_template

from components.alerts import alerts

GITHUB_LINK = "https://github.com/ASIDataScience/dash-bootstrap-components"

alerts_source = open('components/alerts.py').read()

server = Flask(__name__)


@server.route('/')
def index():
    return render_template('index.html')


app = dash.Dash(
    __name__,
    server=server,
    routes_pathname_prefix='/l/'
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


header = html.Div(
    [
        html.H1("Dash Bootstrap Components"),
        html.P(
            [
                "This app demonstrates components available in ",
                html.Code("dash-bootstrap-components"),
            ]
        ),
    ]
)


app.layout = html.Div([
    navbar,
    dbc.Container([
        header,
        alerts,
        dcc.SyntaxHighlighter(alerts_source, language='python', theme='dark'),
        html.Br()
    ])
])


app.index_string = open('./index.html.tpl').read()


if __name__ == '__main__':
    app.run_server(debug=True, threaded=True, port=8888)
