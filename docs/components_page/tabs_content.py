from pathlib import Path

from .api_doc import ApiDoc
from .helpers import ExampleContainer, HighlightedSource, load_source_with_app
from .metadata import get_component_metadata

from .components.tabs.simple import tabs as tabs_simple

HERE = Path(__file__).parent
TABS = HERE / "components" / "tabs"

tabs_simple_source = (TABS / "simple.py").open().read()

content = [
    ExampleContainer(tabs_simple),
    HighlightedSource(tabs_simple_source),
    ApiDoc(
        get_component_metadata("src/components/tabs/Tabs.js"),
        component_name="Tabs",
    ),
    ApiDoc(
        get_component_metadata("src/components/tabs/Tab.js"),
        component_name="Tab",
    ),
]
