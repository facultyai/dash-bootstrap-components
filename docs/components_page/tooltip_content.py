from pathlib import Path

from .api_doc import ApiDoc
from .components.tooltip import tooltip
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent

source = (HERE / "components" / "tooltip.py").open().read()


content = [
    ExampleContainer(tooltip),
    HighlightedSource(source),
    ApiDoc(get_component_metadata("src/components/Tooltip.js")),
]
