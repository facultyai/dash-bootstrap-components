from pathlib import Path

from .api_doc import ApiDoc
from .components.jumbotron.fluid import jumbotron as jumbotron_fluid
from .components.jumbotron.simple import jumbotron as jumbotron_simple
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent
JUMBOTRON = HERE / "components" / "jumbotron"

jumbotron_simple_source = (JUMBOTRON / "simple.py").open().read()
jumbotron_fluid_source = (JUMBOTRON / "fluid.py").open().read()

content = [
    ExampleContainer(jumbotron_simple),
    HighlightedSource(jumbotron_simple_source),
    ExampleContainer(jumbotron_fluid),
    HighlightedSource(jumbotron_fluid_source),
    ApiDoc(get_component_metadata("src/components/Jumbotron.js")),
]
