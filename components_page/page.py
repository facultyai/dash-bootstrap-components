from pathlib import Path

import dash_bootstrap_components as dbc

from .components.alert import get_content as get_alert_content
from .components.badge import content as badge_content
from .components.button import get_content as get_button_content
from .components.button_group import content as button_group_content
from .components.card import content as card_content
from .components.collapse import get_content as get_collapse_content
from .components.dropdown import get_content as get_dropdown_content
from .components.fade import get_content as get_fade_content
from .components.form import get_content as get_form_content
from .components.input import get_content as get_input_content
from .components.input_group import get_content as get_input_group_content
from .components.jumbotron import content as jumbotron_content
from .components.layout import content as layout_content
from .components.list_group import get_content as get_list_group_content
from .components.modal import get_content as get_modal_content
from .components.nav import get_content as get_nav_content
from .components.navbar import get_content as get_navbar_content
from .components.popover import get_content as get_popover_content
from .components.progress import get_content as get_progress_content
from .components.spinner import content as spinner_content
from .components.table import content as table_content
from .components.tabs import get_content as get_tabs_content
from .components.toast import get_content as get_toast_content
from .components.tooltip import content as tooltip_content
from .sidebar import Sidebar, SidebarEntry

HERE = Path(__file__).parent
COMPONENTS = HERE / "components"

GITHUB_LINK = "https://github.com/facultyai/dash-bootstrap-components"

NAVBAR = dbc.NavbarSimple(
    brand="Dash Bootstrap Components",
    brand_href="/",
    brand_external_link=True,
    sticky="top",
    children=[dbc.NavItem(dbc.NavLink("GitHub", href=GITHUB_LINK))],
)


sidebar_entries = [
    SidebarEntry("alert", "Alert"),
    SidebarEntry("badge", "Badge"),
    SidebarEntry("button", "Buttons"),
    SidebarEntry("button_group", "Button Group"),
    SidebarEntry("card", "Card"),
    SidebarEntry("collapse", "Collapse"),
    SidebarEntry("dropdown_menu", "Dropdown Menu"),
    SidebarEntry("fade", "Fade"),
    SidebarEntry("form", "Form"),
    SidebarEntry("input", "Input"),
    SidebarEntry("input_group", "Input Group"),
    SidebarEntry("jumbotron", "Jumbotron"),
    SidebarEntry("layout", "Layout"),
    SidebarEntry("list_group", "List Group"),
    SidebarEntry("modal", "Modal"),
    SidebarEntry("nav", "Navs"),
    SidebarEntry("navbar", "Navbar"),
    SidebarEntry("popover", "Popover"),
    SidebarEntry("progress", "Progress"),
    SidebarEntry("spinner", "Spinners"),
    SidebarEntry("table", "Table"),
    SidebarEntry("tabs", "Tabs"),
    SidebarEntry("toast", "Toast"),
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
            "alert": get_alert_content(self._app),
            "badge": badge_content,
            "button": get_button_content(self._app),
            "button_group": button_group_content,
            "card": card_content,
            "collapse": get_collapse_content(self._app),
            "dropdown_menu": get_dropdown_content(self._app),
            "fade": get_fade_content(self._app),
            "form": get_form_content(self._app),
            "input": get_input_content(self._app),
            "input_group": get_input_group_content(self._app),
            "jumbotron": jumbotron_content,
            "layout": layout_content,
            "list_group": get_list_group_content(self._app),
            "modal": get_modal_content(self._app),
            "nav": get_nav_content(self._app),
            "navbar": get_navbar_content(self._app),
            "popover": get_popover_content(self._app),
            "progress": get_progress_content(self._app),
            "spinner": spinner_content,
            "table": table_content,
            "tabs": get_tabs_content(self._app),
            "toast": get_toast_content(self._app),
            "tooltip": tooltip_content,
        }

    def for_path(self, path_components):
        try:
            component_name = path_components[0]
            component_body = self._component_bodies[component_name]
            return component_page(component_body, component_name)
        except IndexError:
            return self.for_path(["alert"])
