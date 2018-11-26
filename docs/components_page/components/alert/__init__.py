from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .components.alert import alerts
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent

source = (HERE / "components" / "alert.py").read_text()

content = [
    html.H2("Alert"),
    ExampleContainer(alerts),
    HighlightedSource(source),
    ApiDoc(get_component_metadata("src/components/Alert.js")),
]
