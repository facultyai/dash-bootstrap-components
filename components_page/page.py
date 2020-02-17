from pathlib import Path

import dash_bootstrap_components as dbc
import dash_html_components as html

from .components.table.simple import table_body, table_header
from .components.tabs.simple import tab1_content, tab2_content
from .markdown_parser import MarkdownParser
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
LOREM = (COMPONENTS / "modal" / "lorem.txt").read_text()


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
        md_parser = MarkdownParser(self._app)
        self._component_bodies = {
            "alert": md_parser.parse(COMPONENTS / "alert.md"),
            "badge": md_parser.parse(COMPONENTS / "badge.md"),
            "button": md_parser.parse(COMPONENTS / "button.md"),
            "button_group": md_parser.parse(COMPONENTS / "button_group.md"),
            "card": md_parser.parse(COMPONENTS / "card.md"),
            "collapse": md_parser.parse(COMPONENTS / "collapse.md"),
            "dropdown_menu": md_parser.parse(COMPONENTS / "dropdown.md"),
            "fade": md_parser.parse(COMPONENTS / "fade.md"),
            "form": md_parser.parse(COMPONENTS / "form.md"),
            "input": md_parser.parse(COMPONENTS / "input.md"),
            "input_group": md_parser.parse(COMPONENTS / "input_group.md"),
            "jumbotron": md_parser.parse(COMPONENTS / "jumbotron.md"),
            "layout": html.Div(
                md_parser.parse(COMPONENTS / "layout.md"),
                className="layout-demo",
            ),
            "list_group": md_parser.parse(COMPONENTS / "list_group.md"),
            "modal": md_parser.parse(
                COMPONENTS / "modal.md", {"LOREM": LOREM}
            ),
            "nav": md_parser.parse(COMPONENTS / "nav.md"),
            "navbar": md_parser.parse(COMPONENTS / "navbar.md"),
            "popover": md_parser.parse(COMPONENTS / "popover.md"),
            "progress": md_parser.parse(COMPONENTS / "progress.md"),
            "spinner": md_parser.parse(COMPONENTS / "spinner.md"),
            "table": html.Div(
                md_parser.parse(
                    COMPONENTS / "table.md",
                    {
                        "dbc": dbc,
                        "table_header": table_header,
                        "table_body": table_body,
                    },
                ),
            ),
            "tabs": md_parser.parse(
                COMPONENTS / "tabs.md",
                {"tab1_content": tab1_content, "tab2_content": tab2_content},
            ),
            "toast": md_parser.parse(COMPONENTS / "toast.md"),
            "tooltip": md_parser.parse(COMPONENTS / "tooltip.md"),
        }

    def for_path(self, path_components):
        try:
            component_name = path_components[0]
            component_body = self._component_bodies[component_name]
            return component_page(component_body, component_name)
        except IndexError:
            return self.for_path(["alert"])
