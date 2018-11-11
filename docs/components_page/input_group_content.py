from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource
from .api_doc import ApiDoc
from .metadata import get_component_metadata

from .components.input_group.simple import input_group as input_group_simple
from .components.input_group.size import input_group as input_group_size
from .components.input_group.button import input_group as input_group_button

HERE = Path(__file__).parent
INPUT_GROUP = HERE / "components" / "input_group"

input_group_simple_source = (INPUT_GROUP / "simple.py").open().read()
input_group_size_source = (INPUT_GROUP / "size.py").open().read()
input_group_button_source = (INPUT_GROUP / "button.py").open().read()

content = [
    ExampleContainer(input_group_simple),
    HighlightedSource(input_group_simple_source),
    ExampleContainer(input_group_size),
    HighlightedSource(input_group_size_source),
    ExampleContainer(input_group_button),
    HighlightedSource(input_group_button_source),
    ApiDoc(
        get_component_metadata("src/components/input/InputGroup.js"),
        component_name="InputGroup"
    ),
    ApiDoc(
        get_component_metadata("src/components/input/Input.js"),
        component_name="Input"
    ),
    ApiDoc(
        get_component_metadata("src/components/input/InputGroupAddon.js"),
        component_name="InputGroupAddon"
    ),
    ApiDoc(
        get_component_metadata("src/components/input/InputGroupText.js"),
        component_name="InputGroupText"
    ),
]
