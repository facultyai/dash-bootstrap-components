import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output

from components_page import ComponentsPage
from demos.demo_layout import DemoLayoutPage

BOOTSTRAP_CSS = dbc.themes.BOOTSTRAP

HIGHLIGHT_JS_CSS = (
    "https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.13.1/"
    "build/styles/monokai-sublime.min.css"
)


_layout = html.Div(
    [
        dcc.Location(id="docs-location"),
        html.Div(id="docs-content"),
        # For some reason, Dash doesn't work if, at app start-up,
        # a third-party dependency doesn't have at least one component
        # displayed in the DOM tree.
        # Therefore inject a dummy container.
        dbc.Container(),
    ]
)


class App:
    def __init__(self, app):
        self._app = app
        self.pages = {
            "components": ComponentsPage(self._app),
            "demo-layout": DemoLayoutPage(),
        }
        self._create_layout()
        self._create_callbacks()

    @classmethod
    def from_server(cls, server, routes_prefix):
        app = dash.Dash(
            __name__,
            server=server,
            routes_pathname_prefix=routes_prefix,
            external_stylesheets=[BOOTSTRAP_CSS, HIGHLIGHT_JS_CSS],
            # We need to define callbacks before the components are actually
            # bound onto the page.
            suppress_callback_exceptions=True,
        )
        app.title = "Dash Bootstrap Components"
        return cls(app)

    def _create_layout(self):
        self._app.layout = _layout

    def _create_callbacks(self):
        self._app.callback(
            Output("docs-content", "children"),
            [Input("docs-location", "pathname")],
        )(self._on_location_change)

    def _on_location_change(self, location):
        if location is not None:
            path_components = location.lstrip("/l/").split("/")
            try:
                page_name = path_components[0]
                page = self.pages[page_name]
                return page.for_path(path_components[1:])
            except (IndexError, KeyError):
                return self._on_location_change("/l/components")
