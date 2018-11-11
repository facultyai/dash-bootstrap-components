from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource
from .api_doc import ApiDoc
from .metadata import get_component_metadata

from .components.input_group.simple import input_group as input_group_simple

HERE = Path(__file__).parent
INPUT_GROUP = HERE / "components" / "input_group"

input_group_simple_source = (INPUT_GROUP / "simple.py").open().read()

content = [
    ExampleContainer(input_group_simple),
    HighlightedSource(input_group_simple_source)
]
