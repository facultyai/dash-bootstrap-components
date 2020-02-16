from pathlib import Path

import dash_bootstrap_components as dbc
import dash_html_components as html

from .components.table.simple import table_body, table_header
from .components.tabs.simple import tab1_content, tab2_content
from .markdown_parser import MarkdownParser
from .sidebar import Sidebar, SidebarEntry

HERE = Path(__file__).parent
COMPONENTS = HERE / "components"

LOREM = (COMPONENTS / "modal" / "lorem.txt").read_text()



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
