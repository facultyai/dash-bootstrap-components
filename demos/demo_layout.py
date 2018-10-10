import dash_bootstrap_components as dbc
import dash_html_components as html

_body = dbc.Container(
    html.P('Some text')
)


class DemoLayoutPage:

    def for_path(self, component):
        return _body
