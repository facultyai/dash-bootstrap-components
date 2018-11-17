from pathlib import Path

from .api_doc import ApiDoc
from .components.input_group.simple import input_group as input_group_simple
from .components.input_group.size import input_group as input_group_size
from .helpers import ExampleContainer, HighlightedSource, load_source_with_app
from .metadata import get_component_metadata

HERE = Path(__file__).parent
INPUT_GROUP = HERE / "components" / "input_group"

input_group_simple_source = (INPUT_GROUP / "simple.py").open().read()
input_group_size_source = (INPUT_GROUP / "size.py").open().read()
input_group_button_source = (INPUT_GROUP / "button.py").open().read()
input_group_dropdown_source = (INPUT_GROUP / "dropdown.py").open().read()


def get_content(app):
    return [
        ExampleContainer(input_group_simple),
        HighlightedSource(input_group_simple_source),
        ExampleContainer(input_group_size),
        HighlightedSource(input_group_size_source),
        ExampleContainer(
            load_source_with_app(app, input_group_button_source, "input_group")
        ),
        HighlightedSource(input_group_button_source),
        ExampleContainer(
            load_source_with_app(
                app, input_group_dropdown_source, "input_group"
            )
        ),
        HighlightedSource(input_group_dropdown_source),
        ApiDoc(
            get_component_metadata("src/components/input/InputGroup.js"),
            component_name="InputGroup",
        ),
        ApiDoc(
            get_component_metadata("src/components/input/InputGroupAddon.js"),
            component_name="InputGroupAddon",
        ),
        ApiDoc(
            get_component_metadata("src/components/input/InputGroupText.js"),
            component_name="InputGroupText",
        ),
    ]
