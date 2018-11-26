from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .components.tabs.simple import tab1_content, tab2_content
from .components.tabs.simple import tabs as tabs_simple
from .helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from .metadata import get_component_metadata

HERE = Path(__file__).parent
TABS = HERE / "components" / "tabs"

tabs_simple_source = (TABS / "simple.py").read_text()
tabs_active_source = (TABS / "active_tab.py").read_text()

active_tab_blurb = html.P(
    [
        "You can also use the ",
        html.Code("active_tab"),
        " prop of ",
        html.Code("Tabs"),
        " in your callbacks to switch between tabs.",
    ]
)


def get_content(app):
    return [
        html.H2("Tabs"),
        ExampleContainer(tabs_simple),
        HighlightedSource(tabs_simple_source),
        active_tab_blurb,
        ExampleContainer(
            load_source_with_environment(
                tabs_active_source,
                "tabs",
                {
                    "app": app,
                    "tab1_content": tab1_content,
                    "tab2_content": tab2_content,
                },
            )
        ),
        HighlightedSource(tabs_active_source),
        ApiDoc(
            get_component_metadata("src/components/tabs/Tabs.js"),
            component_name="Tabs",
        ),
        ApiDoc(
            get_component_metadata("src/components/tabs/Tab.js"),
            component_name="Tab",
        ),
    ]
