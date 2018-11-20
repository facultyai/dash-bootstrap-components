from pathlib import Path

from .api_doc import ApiDoc
from .helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_locals,
)
from .metadata import get_component_metadata

HERE = Path(__file__).parent

popover_source = (HERE / "components" / "popover.py").open().read()


def get_content(app):
    return [
        ExampleContainer(
            load_source_with_locals(popover_source, "popover", {"app": app})
        ),
        HighlightedSource(popover_source),
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
