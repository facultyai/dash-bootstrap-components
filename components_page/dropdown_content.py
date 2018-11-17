from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource
from .api_doc import ApiDoc
from .metadata import get_component_metadata
from .components.dropdown.simple import dropdown as dropdown_simple
from .components.dropdown.size import dropdown as dropdown_size
from .components.dropdown.direction import dropdown as dropdown_direction

HERE = Path(__file__).parent
DROPDOWN = HERE / "components" / "dropdown"

dropdown_simple_source = (DROPDOWN / "simple.py").open().read()
dropdown_size_source = (DROPDOWN / "size.py").open().read()
dropdown_direction_source = (DROPDOWN / "direction.py").open().read()

content = [
    ExampleContainer(dropdown_simple),
    HighlightedSource(dropdown_simple_source),
    ExampleContainer(dropdown_size),
    HighlightedSource(dropdown_size_source),
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
