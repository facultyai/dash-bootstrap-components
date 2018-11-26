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

collapse_source = (HERE / "collapse.py").read_text()


def get_content(app):
    return [
        html.H2("Collapse"),
        ExampleContainer(
            load_source_with_environment(
                collapse_source, "collapse", {"app": app}
            )
        ),
        HighlightedSource(collapse_source),
        ApiDoc(get_component_metadata("src/components/Collapse.js")),
    ]
