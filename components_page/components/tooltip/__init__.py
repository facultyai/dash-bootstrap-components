from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .components.tooltip import tooltip
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent

source = (HERE / "components" / "tooltip.py").read_text()


content = [
    html.H2("Tooltip"),
    ExampleContainer(tooltip),
    HighlightedSource(source),
    ApiDoc(get_component_metadata("src/components/Tooltip.js")),
]
