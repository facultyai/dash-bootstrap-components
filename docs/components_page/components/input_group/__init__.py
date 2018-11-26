from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .components.input_group.simple import input_group as input_group_simple
from .components.input_group.size import input_group as input_group_size
from .helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from .metadata import get_component_metadata

HERE = Path(__file__).parent
INPUT_GROUP = HERE / "components" / "input_group"

input_group_simple_source = (INPUT_GROUP / "simple.py").read_text()
input_group_size_source = (INPUT_GROUP / "size.py").read_text()
input_group_button_source = (INPUT_GROUP / "button.py").read_text()
input_group_dropdown_source = (INPUT_GROUP / "dropdown.py").read_text()


def get_content(app):
    return [
        html.H2("Input group"),
        ExampleContainer(input_group_simple),
        HighlightedSource(input_group_simple_source),
        html.H4("Addon sizing"),
        ExampleContainer(input_group_size),
        HighlightedSource(input_group_size_source),
        html.H4("Button"),
        ExampleContainer(
            load_source_with_environment(
                input_group_button_source, "input_group", {"app": app}
            )
        ),
        HighlightedSource(input_group_button_source),
        html.H4("DropdownMenu"),
        ExampleContainer(
            load_source_with_environment(
                input_group_dropdown_source, "input_group", {"app": app}
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
