from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource, load_source_with_app
from .api_doc import ApiDoc
from .metadata import get_component_metadata


HERE = Path(__file__).parent

progress_source = (HERE / "components" / "progress.py").open().read()


def get_content(app):
    return [
        ExampleContainer(
            load_source_with_app(app, progress_source, "progress")
        ),
        HighlightedSource(progress_source),
        ApiDoc(get_component_metadata("src/components/Progress.js")),
    ]
