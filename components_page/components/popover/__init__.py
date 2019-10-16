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

HERE = Path(__file__).parent

popover_source = (HERE / "popover.py").read_text()
popover_direction_source = (HERE / "direction.py").read_text()


def get_content(app):
    return [
        html.H2("Popover", className="display-4"),
        html.P(
            dcc.Markdown(
                "Use the `Popover` component to add Bootstrap popovers to any "
                "component in your app."
            ),
            className="lead",
        ),
        html.H4("Simple example"),
        html.P(
            dcc.Markdown(
                "To use `Popover`, add it to your layout, and set the "
                "`target` argument to the `id` of the component you would "
                "like to attach the popover to. Then define a callback that "
                "toggles the `is_open` property of the `Popover`. In the "
                "below example we use a simple callback to toggle the popover "
                "when a button is clicked. In this case the target of the "
                "popover is the button itself, but in general there is no "
                "requirement that the components used in the callback need to "
                "be related to the target."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                popover_source, "popover", {"app": app}
            )
        ),
        HighlightedSource(popover_source),
        html.H4("Placement"),
        html.P(
            dcc.Markdown(
                "Use the `placement` argument to control the placement of the "
                "`Popover`. The basic options are `'top'`, `'left'`, "
                "`'right'`, `'bottom'` and `'auto'`. You can additionally add "
                "`-start` or `-end` to any of these options, e.g. "
                "`'top-start'`."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                popover_direction_source, "popovers", {"app": app}
            )
        ),
        HighlightedSource(popover_direction_source),
        ApiDoc(
            get_component_metadata("src/components/Popover.js"),
            component_name="Popover",
        ),
        ApiDoc(
            get_component_metadata("src/components/PopoverHeader.js"),
            component_name="PopoverHeader",
        ),
        ApiDoc(
            get_component_metadata("src/components/PopoverBody.js"),
            component_name="PopoverBody",
        ),
    ]
