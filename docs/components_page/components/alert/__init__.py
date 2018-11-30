from pathlib import Path

import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .alert import alerts

HERE = Path(__file__).parent

source = (HERE / "alert.py").read_text()

content = [
    html.H2("Alert"),
    ExampleContainer(alerts),
    HighlightedSource(source),
    ApiDoc(get_component_metadata("src/components/Alert.js")),
]
