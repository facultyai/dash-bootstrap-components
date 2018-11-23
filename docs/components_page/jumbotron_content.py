from pathlib import Path

from .helpers import ExampleContainer, HighlightedSource
from .api_doc import ApiDoc
from .metadata import get_component_metadata
from .components.jumbotron.simple import jumbotron as jumbotron_simple
from .components.jumbotron.fluid import jumbotron as jumbotron_fluid

HERE = Path(__file__).parent
JUMBOTRON = HERE / "components" / "jumbotron"

jumbotron_simple_source = (JUMBOTRON / "simple.py").open().read()
jumbotron_fluid_source = (JUMBOTRON / "fluid.py").open().read()

content = [
    ExampleContainer(jumbotron_simple),
    HighlightedSource(jumbotron_simple_source),
    ExampleContainer(jumbotron_fluid),
    HighlightedSource(jumbotron_fluid_source),
    ApiDoc(get_component_metadata("src/components/Jumbotron.js"))
]
