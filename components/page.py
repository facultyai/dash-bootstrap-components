
from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html
import dash_bootstrap_components as dbc

from .alerts import alerts
from .badges import badges

HERE = Path(__file__).parent

alerts_source = (HERE / "alerts.py").open().read()
badges_source = (HERE / "badges.py").open().read()
collapse_source = (HERE / "collapse.py").open().read()


def _load_source_with_app(app, source, component_name):
    """
    Execute a source snippet, injecting the `app` local variable.

    Return the local variable defined by `component_name`. This should
    be used for source files that need to register `@app` callbacks.
    """
    exec_namespace = {'app': app}
    exec(source, {}, exec_namespace)
    return exec_namespace[component_name]


sidebar = [
    html.H1('Components', className='h5'),
    dbc.Nav(
        [
            dbc.NavItem(dbc.NavLink('Alerts', href='/l/components/alerts')),
            dbc.NavItem(dbc.NavLink('Badges', href='/l/components/badges')),
            dbc.NavItem(dbc.NavLink('Collapse', href='/l/components/collapse'))
        ],
        className='flex-column'
    )
]


def component_page(contents):
    return dbc.Container(
        dbc.Row([
            dbc.Col(contents, md=9),
            dbc.Col(sidebar, md=3)
        ])
    )


def component_body(component_layout, source):
    return [
        component_layout,
        dcc.SyntaxHighlighter(source, language='python', theme='dark')
    ]


class ComponentsPage:

    def __init__(self, app):
        self._app = app
        self._contents = {
            'alerts': component_body(alerts, alerts_source),
            'badges': component_body(badges, badges_source),
            'collapse': component_body(
                _load_source_with_app(self._app, collapse_source, 'collapse'),
                collapse_source
            )
        }

    def for_path(self, path_components):
        try:
            component_name = path_components[0]
            component_contents = self._contents[component_name]
            return component_page(component_contents)
        except IndexError:
            return self.for_path(['alerts'])
