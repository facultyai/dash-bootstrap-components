from pathlib import Path

from .api_doc import ApiDoc
from .helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_locals,
)
from .metadata import get_component_metadata

HERE = Path(__file__).parent

progress_source = (HERE / "components" / "progress.py").open().read()


def get_content(app):
    return [
        ExampleContainer(
            load_source_with_locals(progress_source, "progress", {"app": app})
        ),
        HighlightedSource(progress_source),
        ApiDoc(get_component_metadata("src/components/Progress.js")),
    ]
