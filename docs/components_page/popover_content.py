from pathlib import Path

from .api_doc import ApiDoc
from .helpers import ExampleContainer, HighlightedSource, load_source_with_app
from .metadata import get_component_metadata

HERE = Path(__file__).parent

popover_source = (HERE / "components" / "popover.py").open().read()


def get_content(app):
    return [
        ExampleContainer(
            load_source_with_app(app, popover_source, "popover")
        ),
        HighlightedSource(popover_source),
        ApiDoc(get_component_metadata("src/components/Popover.js")),
    ]
