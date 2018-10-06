
import dash
import dash_core_components as dcc
import dash_html_components as html
import dash_bootstrap_components as dbc
from dash.dependencies import Input, Output

from components import ComponentsPage

GITHUB_LINK = "https://github.com/ASIDataScience/dash-bootstrap-components"

BOOTSTRAP_CSS = (
    "https://stackpath.bootstrapcdn.com/"
    "bootstrap/4.1.3/css/bootstrap.min.css"
)


_navbar = dbc.Navbar(
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


_layout = html.Div([
    dcc.Location(id='docs-location'),
    _navbar,
    html.Div(id='docs-contents')
])


class App:

    def __init__(self, app):
        self._app = app
        self.pages = {
            'components': ComponentsPage(self._app)
        }
        self._create_layout()
        self._create_callbacks()

    @classmethod
    def from_server(cls, server, routes_prefix):
        app = dash.Dash(
            __name__,
            server=server,
            routes_pathname_prefix=routes_prefix,
            external_stylesheets=[BOOTSTRAP_CSS],
            # We need to define callbacks before the components are actually
            # bound onto the page.
            suppress_callback_exceptions=True
        )
        return cls(app)

    def _create_layout(self):
        self._app.layout = _layout

    def _create_callbacks(self):
        self._app.callback(
            Output('docs-contents', 'children'),
            [Input('docs-location', 'pathname')]
        )(self._on_location_change)

    def _on_location_change(self, location):
        if location is not None:
            path_components = location.lstrip('/l/').split('/')
            try:
                page_name = path_components[0]
                page = self.pages[page_name]
                return page.for_path(path_components[1:])
            except (IndexError, KeyError):
                return self._on_location_change('/l/components')
