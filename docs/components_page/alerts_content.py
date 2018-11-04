from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource
from .api_doc import ApiDoc
from .metadata import get_component_metadata
from .components.alerts import alerts


HERE = Path(__file__).parent

source = (HERE / "components" / "alerts.py").open().read()


content = [
    ExampleContainer(alerts),
    HighlightedSource(source),
    ApiDoc(get_component_metadata("src/components/Alert.js")),
]
