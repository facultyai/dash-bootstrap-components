from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from ...metadata import get_component_metadata
from .check_radio import input_groups as input_group_check_radio
from .simple import input_groups as input_group_simple
from .size import input_group as input_group_size

HERE = Path(__file__).parent

input_group_simple_source = (HERE / "simple.py").read_text()
input_group_size_source = (HERE / "size.py").read_text()
input_group_check_radio_source = (HERE / "check_radio.py").read_text()
input_group_button_source = (HERE / "button.py").read_text()
input_group_dropdown_source = (HERE / "dropdown.py").read_text()


def get_content(app):
    return [
        html.H2("Input group", className="display-4"),
        html.P(
            dcc.Markdown(
                "Easily extend form controls by adding text, buttons or "
                "button groups on either side of `Input`, `Textarea` and "
                "`Select` components."
            ),
            className="lead",
        ),
        html.H4("Basic example"),
        html.P(
            dcc.Markdown(
                "Wrap a compatible input component and an `InputGroupAddon` "
                "in an `InputGroup`. Use the `addon_type` keyword argument of "
                "`InputGroupAddon` to ensure the correct styling."
            )
        ),
        ExampleContainer(input_group_simple),
        HighlightedSource(input_group_simple_source),
        html.H4("Sizing"),
        html.P(
            dcc.Markdown(
                "Use the `size` argument of `InputGroup` to set the size of "
                "all the contents, including inputs and addons. Possible "
                "options are `'lg'`, `'md'`, and `'sm'` for large, medium and "
                "small respectively."
            )
        ),
        ExampleContainer(input_group_size),
        HighlightedSource(input_group_size_source),
        html.H4("Checkboxes and radios"),
        html.P(
            dcc.Markdown(
                "You can place a `Checkbox` or `RadioButton` inside the "
                "`InputGroup` instead of just text."
            )
        ),
        ExampleContainer(input_group_check_radio),
        HighlightedSource(input_group_check_radio_source),
        html.H4("Button addons"),
        ExampleContainer(
            load_source_with_environment(
                input_group_button_source, "input_group", {"app": app}
            )
        ),
        HighlightedSource(input_group_button_source),
        html.H4("DropdownMenu addons"),
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
