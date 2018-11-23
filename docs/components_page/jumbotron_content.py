from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource
from .api_doc import ApiDoc
from .metadata import get_component_metadata
from .components.jumbotron.simple import jumbotron as jumbotron_simple

HERE = Path(__file__).parent
JUMBOTRON = HERE / "components" / "jumbotron"

jumbotron_simple_source = (JUMBOTRON / "simple.py").open().read()

content = [
    ExampleContainer(jumbotron_simple),
    HighlightedSource(jumbotron_simple_source),
    ApiDoc(get_component_metadata("src/components/Jumbotron.js"))
]
