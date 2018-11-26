from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .components.dropdown.direction import dropdown as dropdown_direction
from .components.dropdown.simple import dropdown as dropdown_simple
from .components.dropdown.size import dropdown as dropdown_size
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent
DROPDOWN = HERE / "components" / "dropdown"

dropdown_simple_source = (DROPDOWN / "simple.py").read_text()
dropdown_size_source = (DROPDOWN / "size.py").read_text()
dropdown_direction_source = (DROPDOWN / "direction.py").read_text()

content = [
    html.H2("Dropdown menu"),
    ExampleContainer(dropdown_simple),
    HighlightedSource(dropdown_simple_source),
    html.H4("Dropdown sizing"),
    ExampleContainer(dropdown_size),
    HighlightedSource(dropdown_size_source),
    html.H4("Dropdown direction"),
    ExampleContainer(dropdown_direction),
    HighlightedSource(dropdown_direction_source),
    ApiDoc(
        get_component_metadata("src/components/DropdownMenu.js"),
        component_name="DropdownMenu",
    ),
    ApiDoc(
        get_component_metadata("src/components/DropdownMenuItem.js"),
        component_name="DropdownMenuItem",
    ),
]
