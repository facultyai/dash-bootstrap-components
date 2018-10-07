
from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html
import dash_bootstrap_components as dbc

from .alerts import alerts
from .badges import badges

from typing import NamedTuple, List

HERE = Path(__file__).parent

alerts_source = (HERE / "alerts.py").open().read()
badges_source = (HERE / "badges.py").open().read()
collapse_source = (HERE / "collapse.py").open().read()


class SidebarEntry(NamedTuple):
    slug: str  # identifier corresponding to this entry
    heading: str


class Body(NamedTuple):
    layout: List  # dash node demonstrating a component
    source: str  # source code for that node


sidebar_entries = [
    SidebarEntry("alerts", "Alerts"),
    SidebarEntry("badges", "Badges"),
    SidebarEntry("collapse", "Collapse"),
]


def _load_source_with_app(app, source, component_name):
    """
    Execute a source snippet, injecting the `app` local variable.

    Return the local variable defined by `component_name`. This should
    be used for source files that need to register `@app` callbacks.
    """
    exec_namespace = {"app": app}
    exec(source, {}, exec_namespace)
    return exec_namespace[component_name]


def sidebar(active_item):
    header = html.H1("Components", className="h5")
    items = [
        sidebar_item(
            entry.heading, f"/l/components/{entry.slug}", active_item == entry.slug
        )
        for entry in sidebar_entries
    ]
    nav = dbc.Nav(items, className="flex-column")
    return [header, nav]


def sidebar_item(heading, location, is_active):
    return dbc.NavItem(dbc.NavLink(heading, href=location, active=is_active))


def component_page(body_entry, active_item):
    body = component_body(body_entry)
    sidebar_contents = sidebar(active_item)
    body_column = dbc.Col(body, md=9)
    sidebar_column = dbc.Col(sidebar_contents, md=3, className="docs-sidebar")
    return dbc.Container(dbc.Row([body_column, sidebar_column]))


def component_body(body_entry):
    return [
        body_entry.layout,
        dcc.SyntaxHighlighter(body_entry.source, language="python", theme="dark"),
    ]


class ComponentsPage:
    def __init__(self, app):
        self._app = app
        self._component_bodies = {
            "alerts": Body(alerts, alerts_source),
            "badges": Body(badges, badges_source),
            "collapse": Body(
                _load_source_with_app(self._app, collapse_source, "collapse"),
                collapse_source,
            ),
        }

    def for_path(self, path_components):
        try:
            component_name = path_components[0]
            component_body = self._component_bodies[component_name]
            return component_page(component_body, component_name)
        except IndexError:
            return self.for_path(["alerts"])
