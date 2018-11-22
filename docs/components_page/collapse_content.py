from pathlib import Path

from .api_doc import ApiDoc
from .helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from .metadata import get_component_metadata

HERE = Path(__file__).parent

collapse_source = (HERE / "components" / "collapse.py").open().read()


def get_content(app):
    return [
        ExampleContainer(
            load_source_with_environment(
                collapse_source, "collapse", {"app": app}
            )
        ),
        HighlightedSource(collapse_source),
        ApiDoc(get_component_metadata("src/components/Collapse.js")),
    ]
