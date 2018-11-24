from pathlib import Path

import dash_bootstrap_components as dbc

from .alerts_content import content as alerts_content
from .badges_content import content as badges_content
from .buttons_content import get_content as get_buttons_content
from .cards_content import content as cards_content
from .collapse_content import get_content as get_collapse_content
from .dropdown_content import content as dropdown_content
from .fade_content import get_content as get_fade_content
from .forms_content import content as forms_content
from .input_group_content import get_content as get_input_group_content
from .jumbotron_content import content as jumbotron_content
from .layout_content import content as layout_content
from .listgroup_content import content as listgroup_content
from .popover_content import get_content as get_popover_content
from .progress_content import get_content as get_progress_content
from .sidebar import Sidebar, SidebarEntry
from .table_content import content as table_content
from .tabs_content import get_content as get_tabs_content
from .tooltip_content import content as tooltip_content

HERE = Path(__file__).parent
COMPONENTS = HERE / "components"

GITHUB_LINK = "https://github.com/ASIDataScience/dash-bootstrap-components"

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
    SidebarEntry("dropdown_menu", "Dropdown Menu"),
    SidebarEntry("fade", "Fade"),
    SidebarEntry("forms", "Forms"),
    SidebarEntry("input_group", "Input Group"),
    SidebarEntry("jumbotron", "Jumbotron"),
    SidebarEntry("layout", "Layout"),
    SidebarEntry("listgroup", "List Group"),
    SidebarEntry("popover", "Popover"),
    SidebarEntry("progress", "Progress"),
    SidebarEntry("table", "Table"),
    SidebarEntry("tabs", "Tabs"),
    SidebarEntry("tooltip", "Tooltip"),
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
            "collapse": get_collapse_content(self._app),
            "dropdown_menu": dropdown_content,
            "fade": get_fade_content(self._app),
            "forms": forms_content,
            "input_group": get_input_group_content(self._app),
            "jumbotron": jumbotron_content,
            "layout": layout_content,
            "listgroup": listgroup_content,
            "popover": get_popover_content(self._app),
            "progress": get_progress_content(self._app),
            "table": table_content,
            "tabs": get_tabs_content(self._app),
            "tooltip": tooltip_content,
        }

    def for_path(self, path_components):
        try:
            component_name = path_components[0]
            component_body = self._component_bodies[component_name]
            return component_page(component_body, component_name)
        except IndexError:
            return self.for_path(["alerts"])
