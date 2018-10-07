
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


def _get_collapse(app):
    exec_namespace = {'app': app}
    exec(collapse_source, {}, exec_namespace)
    return exec_namespace['collapse']


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


class ComponentsPage:

    def __init__(self, app):
        self._app = app
        self._contents = {
            'alerts': [
                alerts,
                dcc.SyntaxHighlighter(alerts_source, language='python', theme='dark')
            ],
            'badges': [
                badges,
                dcc.SyntaxHighlighter(badges_source, language='python', theme='dark')
            ],
            'collapse': [
                _get_collapse(self._app),
                dcc.SyntaxHighlighter(collapse_source, language='python', theme='dark')
            ]
        }

    def for_path(self, path_components):
        try:
            component_name = path_components[0]
            component_contents = self._contents[component_name]
            return component_page(component_contents)
        except IndexError:
            return self.for_path(['alerts'])
