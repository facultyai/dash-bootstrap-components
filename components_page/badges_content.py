from pathlib import Path

from .api_doc import ApiDoc
from .components.badges import badges
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent

badges_source = (HERE / "components" / "badges.py").open().read()


content = [
    ExampleContainer(badges),
    HighlightedSource(badges_source),
    ApiDoc(get_component_metadata("src/components/Badge.js")),
]
