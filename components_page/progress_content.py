from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from .metadata import get_component_metadata

HERE = Path(__file__).parent

progress_source = (HERE / "components" / "progress.py").read_text()


def get_content(app):
    return [
        html.H2("Progress"),
        ExampleContainer(
            load_source_with_environment(
                progress_source, "progress", {"app": app}
            )
        ),
        HighlightedSource(progress_source),
        ApiDoc(get_component_metadata("src/components/Progress.js")),
    ]
