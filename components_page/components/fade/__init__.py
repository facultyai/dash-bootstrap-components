from pathlib import Path

import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from ...metadata import get_component_metadata

HERE = Path(__file__).parent

fade_source = (HERE / "fade.py").read_text()


def get_content(app):
    return [
        html.H2("Fade"),
        ExampleContainer(
            load_source_with_environment(fade_source, "fade", {"app": app})
        ),
        HighlightedSource(fade_source),
        ApiDoc(get_component_metadata("src/components/Fade.js")),
    ]
