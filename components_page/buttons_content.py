from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource, load_source_with_app
from .api_doc import ApiDoc
from .metadata import get_component_metadata

from .components.buttons.group import buttons as buttons_group
from .components.buttons.outline import buttons as buttons_outline
from .components.buttons.simple import buttons as buttons_simple


HERE = Path(__file__).parent
BUTTONS = HERE / "components" / "buttons"

buttons_simple_source = (BUTTONS / "simple.py").open().read()
buttons_usage_source = (BUTTONS / "usage.py").open().read()
buttons_outline_source = (BUTTONS / "outline.py").open().read()
buttons_group_source = (BUTTONS / "group.py").open().read()


def get_content(app):
    return [
        ExampleContainer(buttons_simple),
        HighlightedSource(buttons_simple_source),
        ExampleContainer(
            load_source_with_app(
                app, buttons_usage_source, "button"
            )
        ),
        HighlightedSource(buttons_usage_source),
        ExampleContainer(buttons_outline),
        HighlightedSource(buttons_outline_source),
        ExampleContainer(buttons_group),
        HighlightedSource(buttons_group_source),
        ApiDoc(get_component_metadata("src/components/Button.js")),
    ]
