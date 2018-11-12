from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource
from .api_doc import ApiDoc
from .metadata import get_component_metadata
from .components.jumbotron import jumbotron

HERE = Path(__file__).parent

jumbotron_source = (HERE / "components" / "jumbotron.py").open().read()

content = [
    ExampleContainer(jumbotron),
    HighlightedSource(jumbotron_source)
]
