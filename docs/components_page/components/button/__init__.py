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
from .active_disabled import buttons as buttons_active_disabled
from .block import button as button_block
from .outline import buttons as buttons_outline
from .simple import buttons as buttons_simple
from .size import buttons as buttons_size

HERE = Path(__file__).parent

buttons_simple_source = (HERE / "simple.py").read_text()
buttons_usage_source = (HERE / "usage.py").read_text()
buttons_outline_source = (HERE / "outline.py").read_text()
buttons_size_source = (HERE / "size.py").read_text()
button_block_source = (HERE / "block.py").read_text()
buttons_active_disabled_source = (HERE / "active_disabled.py").read_text()


def get_content(app):
    return [
        html.H2("Buttons", className="display-4"),
        html.P(
            dcc.Markdown(
                "Documentation and examples for Bootstrap's button styles "
                "with *dash-bootstrap-components*."
            ),
            className="lead",
        ),
        html.H4("Buttons"),
        html.P(
            dcc.Markdown(
                "Bootstrap includes several predefined button styles based on "
                "the predefined contextual colors. Chooose between them using "
                "the `color` argument."
            )
        ),
        ExampleContainer(buttons_simple),
        HighlightedSource(buttons_simple_source),
        html.H4("Using buttons"),
        html.P(
            dcc.Markdown(
                "Use the `n_clicks` prop as an input to your callbacks to "
                "trigger the callback when buttons are clicked by the user."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                buttons_usage_source, "button", {"app": app}
            )
        ),
        HighlightedSource(buttons_usage_source),
        html.H4("Outline buttons"),
        html.P(
            dcc.Markdown(
                "Set `outline=True` to apply the outline button style, which "
                "is more lightweight than the default style."
            )
        ),
        ExampleContainer(buttons_outline),
        HighlightedSource(buttons_outline_source),
        html.H4("Button size"),
        html.P(
            dcc.Markdown(
                "Modify the size of the button by setting `size` to either "
                '`"sm"` or `"lg"` for a small or large button respectively.'
            )
        ),
        ExampleContainer(buttons_size),
        HighlightedSource(buttons_size_source),
        html.H4("Block button"),
        html.P(
            dcc.Markdown(
                "Create a block level button (one which spans the full width "
                "of the parent) by setting `block=True`."
            )
        ),
        ExampleContainer(button_block),
        HighlightedSource(button_block_source),
        html.H4("Active and disabled states"),
        html.P(
            dcc.Markdown(
                "When a user hovers the cursor over a button the background "
                "and border will darken in response. You can enforce this "
                "active state if needed by setting `active=True`."
            )
        ),
        html.P(
            dcc.Markdown(
                "You can disable a button, making it unclickable and applying "
                "the disabled style, by setting `disabled=True`."
            )
        ),
        ExampleContainer(buttons_active_disabled),
        HighlightedSource(buttons_active_disabled_source),
        ApiDoc(get_component_metadata("src/components/Button.js")),
    ]
