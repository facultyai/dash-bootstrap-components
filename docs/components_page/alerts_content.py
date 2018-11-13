from pathlib import Path

from .api_doc import ApiDoc
from .components.alerts import alerts
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent

source = (HERE / "components" / "alerts.py").open().read()


content = [
    ExampleContainer(alerts),
    HighlightedSource(source),
    ApiDoc(get_component_metadata("src/components/Alert.js")),
]
