from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource
from .api_doc import ApiDoc
from .metadata import get_component_metadata
from .components.dropdown.simple import dropdown as dropdown_simple

HERE = Path(__file__).parent
DROPDOWN = HERE / "components" / "dropdown"

dropdown_simple_source = (DROPDOWN / "simple.py").open().read()

content = [
    ExampleContainer(dropdown_simple),
    HighlightedSource(dropdown_simple_source)
]
