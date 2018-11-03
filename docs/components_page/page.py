from pathlib import Path

import dash_bootstrap_components as dbc

from .alerts_content import content as alerts_content
from .buttons_content import get_content as get_buttons_content
from .badges_content import content as badges_content
from .cards_content import content as cards_content
from .layout_content import content as layout_content

from .helpers import ExampleContainer, HighlightedSource, load_source_with_app
from .api_doc import ApiDoc
from .metadata import get_component_metadata
from .sidebar import Sidebar, SidebarEntry


HERE = Path(__file__).parent
COMPONENTS = HERE / "components"

GITHUB_LINK = "https://github.com/ASIDataScience/dash-bootstrap-components"

collapse_source = (COMPONENTS / "collapse.py").open().read()

NAVBAR = dbc.Navbar(
    brand="Dash Bootstrap Components",
    brand_href="/",
    brand_external_link=True,
    sticky="top",
    children=[dbc.NavItem(dbc.NavLink("GitHub", href=GITHUB_LINK))],
)


sidebar_entries = [
    SidebarEntry("alerts", "Alerts"),
    SidebarEntry("badges", "Badges"),
    SidebarEntry("buttons", "Buttons"),
    SidebarEntry("cards", "Cards"),
    SidebarEntry("collapse", "Collapse"),
    SidebarEntry("layout", "Layout"),
]


def component_page(body_elements, active_item):
    sidebar_contents = Sidebar(sidebar_entries, active_item)
    body_column = dbc.Col(body_elements, md=9)
    sidebar_column = dbc.Col(sidebar_contents, md=3, className="docs-sidebar")
    page_body = dbc.Container(
        dbc.Row([body_column, sidebar_column]), className="docs-content"
    )
    return [NAVBAR, page_body]


class ComponentsPage:
    def __init__(self, app):
        self._app = app
        self._component_bodies = {
            "alerts": alerts_content,
            "badges": badges_content,
            "buttons": get_buttons_content(self._app),
            "cards": cards_content,
            "collapse": [
                ExampleContainer(
                    load_source_with_app(
                        self._app, collapse_source, "collapse"
                    )
                ),
                HighlightedSource(collapse_source),
                ApiDoc(get_component_metadata("src/components/Collapse.js")),
            ],
            "layout": layout_content
        }

    def for_path(self, path_components):
        try:
            component_name = path_components[0]
            component_body = self._component_bodies[component_name]
            return component_page(component_body, component_name)
        except IndexError:
            return self.for_path(["alerts"])
