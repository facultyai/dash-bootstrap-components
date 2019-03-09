from pathlib import Path

import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .alignment import dropdown as dropdown_alignment
from .direction import dropdown as dropdown_direction
from .simple import dropdown as dropdown_simple
from .size import dropdown as dropdown_size

HERE = Path(__file__).parent

dropdown_simple_source = (HERE / "simple.py").read_text()
dropdown_size_source = (HERE / "size.py").read_text()
dropdown_direction_source = (HERE / "direction.py").read_text()
dropdown_alignment_source = (HERE / "alignment.py").read_text()

content = [
    html.H2("DropdownMenu"),
    ExampleContainer(dropdown_simple),
    HighlightedSource(dropdown_simple_source),
    html.H4("DropdownMenu sizing"),
    ExampleContainer(dropdown_size),
    HighlightedSource(dropdown_size_source),
    html.H4("DropdownMenu direction"),
    ExampleContainer(dropdown_direction),
    HighlightedSource(dropdown_direction_source),
    html.H4("DropdownMenu alignment"),
    ExampleContainer(dropdown_alignment),
    HighlightedSource(dropdown_alignment_source),
    ApiDoc(
        get_component_metadata("src/components/DropdownMenu.js"),
        component_name="DropdownMenu",
    ),
    ApiDoc(
        get_component_metadata("src/components/DropdownMenuItem.js"),
        component_name="DropdownMenuItem",
    ),
]
