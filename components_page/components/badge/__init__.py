from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .components.badges import badges
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent

badges_source = (HERE / "components" / "badges.py").read_text()


content = [
    html.H2("Badges"),
    ExampleContainer(badges),
    HighlightedSource(badges_source),
    ApiDoc(get_component_metadata("src/components/Badge.js")),
]
