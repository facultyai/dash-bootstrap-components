from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .dropdown import button_group as button_group_dropdown
from .simple import button_group as button_group_simple
from .size import button_groups as button_group_size
from .vertical import button_group as button_group_vertical

HERE = Path(__file__).parent

button_group_simple_source = (HERE / "simple.py").read_text()
button_group_size_source = (HERE / "size.py").read_text()
button_group_dropdown_source = (HERE / "dropdown.py").read_text()
button_group_vertical_source = (HERE / "vertical.py").read_text()

content = [
    html.H2("Button group", className="display-4"),
    html.P(
        dcc.Markdown(
            "Group a series of buttons on a single line with the "
            "`ButtonGroup` component."
        ),
        className="lead",
    ),
    html.H4("Simple example"),
    html.P(
        dcc.Markdown("Wrap a list of `Button` components with `ButtonGroup`.")
    ),
    ExampleContainer(button_group_simple),
    HighlightedSource(button_group_simple_source),
    html.H4("Size"),
    html.P(
        dcc.Markdown(
            "Instead of setting the `size` prop of each button in the group, "
            "you can set the `size` prop of the `ButtonGroup` to modify the "
            "size of all buttons in the group."
        )
    ),
    ExampleContainer(button_group_size),
    HighlightedSource(button_group_size_source),
    html.H4("Dropdown"),
    html.P(
        dcc.Markdown(
            "As well as `Button` you can include `DropdownMenu` in your "
            "button groups by setting `group=True`."
        )
    ),
    ExampleContainer(button_group_dropdown),
    HighlightedSource(button_group_dropdown_source),
    html.H4("Vertical variation"),
    html.P(
        dcc.Markdown(
            "Stack buttons in the `ButtonGroup` vertically by setting "
            "`vertical=True`."
        )
    ),
    ExampleContainer(button_group_vertical),
    HighlightedSource(button_group_vertical_source),
    ApiDoc(get_component_metadata("src/components/ButtonGroup.js")),
]
