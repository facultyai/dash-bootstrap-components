from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource, load_source_with_app
from .api_doc import ApiDoc
from .metadata import get_component_metadata


HERE = Path(__file__).parent

fade_source = (HERE / "components" / "fade.py").open().read()


def get_content(app):
    return [
        ExampleContainer(
            load_source_with_app(app, fade_source, "fade")
        ),
        HighlightedSource(fade_source),
        ApiDoc(
            get_component_metadata("src/components/Fade.js"),
        ),
    ]
